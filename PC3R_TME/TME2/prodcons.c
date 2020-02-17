#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <sched.h>
#include <stdbool.h>
#include <unistd.h>
#include "ft_v1.1/include/fthread.h"

#define NBPROD 2
#define NBCONS 2
#define NBMESS 2
#define CIBLEPROD 3
#define TAILLE 5
#define TAPISCONS 0
#define TAPISPROD 1


int compteur = NBPROD * CIBLEPROD;

ft_event_t endConso;
ft_event_t plusVideP;
ft_event_t plusPleinP;
ft_event_t plusVideC;
ft_event_t plusPleinC;

typedef struct paquet paquet;
struct paquet
{
    char content[32];
};


typedef struct Tapis Tapis;
struct Tapis
{
    paquet file[TAILLE];
    int capacite;
    int nbElem;
};

typedef struct _ProdArgs
{
    int cible;
    Tapis *tapis;
    char nom[100];
    FILE* prodLog;
} ProdArgs;

typedef struct ConsoArgs
{
    int id;
    Tapis *tapis;
    FILE *ConsoLog;
} ConsoArgs;

typedef struct MessArgs
{
    ft_scheduler_t tcons_sched;
    ft_scheduler_t tprod_sched;
    Tapis *tapisC;
    Tapis *tapisP;
    int id;
    FILE* MessLog;
} MessArgs;

static int id = 0;


//===========Utils==========

//Decremente cpt et renvoi vrai si reussi
bool decremente(int *cpt)
{
    if (*cpt > 0)
    {
        (*cpt)--;
        return true;
    }
    else
    {
        return false;
    }
}



void enfiler(Tapis *t, paquet p, int tapis_type)
{

    //si full on attend
    while (t->capacite == t->nbElem)
    {
        if(tapis_type == TAPISCONS)
            ft_await(plusPleinC);
        if(tapis_type == TAPISPROD)
            ft_await(plusPleinP);
    }
    if(t->nbElem + 1 > t->capacite)
        perror("tapis overflow in empiler");
    //on place le paquet en fin de file
    t -> file[t -> nbElem] = p;
    t->nbElem++;
    //on previent que le tapis n'est plus vide
    if(tapis_type== TAPISCONS)
        ft_broadcast(plusVideC);
    if(tapis_type == TAPISPROD)
        ft_broadcast(plusVideP);
    
}




paquet defiler(Tapis *t, int tapis_type)
{
    //si vide on attend
    while (t->nbElem == 0)
    {   
        if(tapis_type == TAPISCONS)
            ft_await(plusVideC);
        if(tapis_type == TAPISPROD)
            ft_await(plusVideP);
    }
    //recuperation du premier element (headpop)
    paquet p = t->file[0];
    //copie et decalage du tapis
    Tapis * tmp;
    tmp -> capacite = t -> capacite;
    int i;
    for( i = 0 ; i < (t -> nbElem) - 1 ; i++ ){  //TODO a voir s'il n'y a qu'un elem
        tmp -> file[i] = t -> file[i+1];
    }
    t = tmp;
    t->nbElem--;
    //on previent que le tapis n'est plus plein
    if(tapis_type == TAPISCONS)
        ft_broadcast(plusPleinC);
    if(tapis_type == TAPISPROD)
        ft_broadcast(plusPleinP);
    return p;
}

//==========Routines=============

void *consommateur(void *args)
{
    printf("Debut consommateur\n");
    ConsoArgs *arg = (ConsoArgs *)args;
    Tapis *tapis = arg->tapis;
    FILE* clog = arg ->ConsoLog;
    id++;

    while (decremente(&compteur))
    {   
        paquet p =defiler(tapis, TAPISCONS);
        printf("C%d mange %s\n", id, p.content);
        fputs(p.content, clog);
        ft_cooperate();
    }
    ft_broadcast(endConso);
    printf("Fin consommateur\n");
}



void *producteur(void *args)
{
    printf("Debut producteur\n");
    ProdArgs *arg = (ProdArgs *)args;
    int cible = arg->cible;
    char name[100];
    strcpy(name, arg->nom);
    Tapis *tapis = &arg->tapis;
    int cpt = 1;
    FILE* plog = arg->prodLog; 

    while (cible != 0)
    {
        char newname[100];
        char buff[100];
        strcpy(newname, name);
        strcat(newname, " ");
        sprintf(buff, "%d", cpt);
        strcat(newname, buff);
        paquet* p = (paquet *) malloc(sizeof(paquet));
        strcpy(p -> content,newname);

        enfiler(tapis, *p, TAPISPROD);
        printf("Producteur: %s\n", newname);

        cible--;
        cpt++;
        fputs(newname, plog);
        ft_cooperate();
    }

    printf("Fin producteur\n");
}



void* messager(void *args){
    MessArgs* arg = (MessArgs *) args;
    ft_scheduler_t psched = arg ->tprod_sched;
    ft_scheduler_t csched = arg ->tcons_sched;
    Tapis  *tcons = arg ->tapisC;
    Tapis  *tprod = arg ->tapisP;
    FILE* mlog = arg ->MessLog;

    while(compteur > 0){
        ft_thread_link(psched);
        paquet p = defiler(tprod,TAPISPROD);
        ft_thread_unlink();
        fputs(p.content,mlog);
        ft_thread_link(csched);
        enfiler(tprod, p, TAPISCONS);
        ft_thread_unlink();
    }

}


//=============Main================

int main()
{

    // Les tapis initialisés
    Tapis tapis_prod;
    Tapis tapis_cons;
    tapis_cons.capacite = TAILLE;       
    tapis_cons.nbElem = 0;
    tapis_prod.capacite = TAILLE;       
    tapis_prod.nbElem = 0;

    //schedulers
    ft_scheduler_t compteur_sched = ft_scheduler_create();
    ft_scheduler_t tcons_sched = ft_scheduler_create();
    ft_scheduler_t tprod_sched = ft_scheduler_create();

    //events
    endConso = ft_event_create(compteur_sched);
    plusVideC = ft_event_create(tcons_sched);
    plusPleinC = ft_event_create(tcons_sched);
    plusVideP = ft_event_create(tprod_sched);
    plusPleinP = ft_event_create(tprod_sched);

    //log files
    FILE* clog = fopen("ConsoLog.txt","a+");
    FILE* plog = fopen("ProdLog.txt","a+");
    FILE* mlog = fopen("MessLog.txt","a+");

    //routine args init
    ProdArgs pargs;
    pargs.tapis = &tapis_prod;
    pargs.cible = 3;
    strcpy(pargs.nom, "pomme");
    pargs.prodLog = plog;

    ConsoArgs cargs;
    cargs.tapis = &tapis_cons;
    cargs.ConsoLog = clog;

    MessArgs margs;
    margs.tapisC = &tapis_cons;
    margs.tapisP = &tapis_prod;
    margs.tcons_sched = tcons_sched;
    margs.tprod_sched = tprod_sched;
    margs.MessLog = mlog;

    //Lancement thread producteurs

    int i;
    for (i = 0; i < NBPROD; i++)
    {
        strcpy(pargs.nom, "pomme");
        ft_thread_create(tprod_sched,producteur, NULL,&pargs);
    }

    for (i = 0; i < NBCONS; i++)
    {
        cargs.id = i;
        ft_thread_create(tcons_sched,consommateur, NULL,&cargs);
    }

    /*  les threads utilisant le compteur ne sont pas sur le meme scheduler
        ils peuvent donc etre preemptes et rendre le compteur incoherent
        probleme : comment attacher le main a un sched ? (puisqu'ici le main attente que compteur = 0)
        solution ? deleguer la gestion de l'attente du compteur à un thread, et faire join sur ce thread ?
    */
    while(compteur>0){      
        ft_await(endConso);
    }

    printf("END\n");
    
}