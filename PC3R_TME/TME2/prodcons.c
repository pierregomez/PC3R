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
#define CIBLEPROD 3
#define TAILLE 5


int compteur = NBPROD * CIBLEPROD;


ft_scheduler_t compteur_sched;
ft_scheduler_t tapis_sched;
ft_scheduler_t tcons_sched;
ft_scheduler_t tprod_sched;

ft_event_t endConso;
ft_event_t plusVide;
ft_event_t plusPlein;

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
    Tapis tapis;
    char nom[100];
} ProdArgs;

typedef struct ConsoArgs
{
    int id;
    Tapis *tapis;
} ConsoArgs;
static int id = 0;

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


void enfiler(Tapis *t, paquet p)
{

    //si full on attend
    while (t->capacite == t->nbElem)
    {
        ft_await(plusPlein);
    }
    if(t->nbElem + 1 > t->capacite)
        perror("tapis overflow in empiler");
    //on place le paquet en fin de file
    t -> file[t -> nbElem] = p;
    t->nbElem++;
    //on previent que le tapis n'est plus vide
    ft_broadcast(plusVide);
}

paquet defiler(Tapis *t)
{
    //si vide on attend
    while (t->nbElem == 0)
    {
        ft_await(plusVide);
    }
    //recuperation du premier element (headpop)
    paquet p = t->file[0];
    //copie et decalage du tapis
    Tapis * tmp;
    tmp -> capacite = t -> capacite;
    int i;
    for( i = 0 ; i < (t -> nbElem) - 1 ; i++ ){  //a voir s'il n'y a q'un elem
        tmp -> file[i] = t -> file[i+1];
    }
    t = tmp;
    t->nbElem--;
    //on previent que le tapis n'est plus plein
    ft_broadcast(plusPlein);
    return p;
}

void *consommateur(void *args)
{
    printf("Debut consommateur\n");
    ConsoArgs *arg = (ConsoArgs *)args;
    Tapis *tapis = arg->tapis;
    id++;

    while (decremente(&compteur))
    {
        printf("C%d mange %s\n", id, defiler(tapis));
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

    while (cible != 0)
    {
        char newname[100];
        char buff[100];
        strcpy(newname, name);
        strcat(newname, " ");
        sprintf(buff, "%d", cpt);
        strcat(newname, buff);
        paquet p;
        p.content = newname; // ????

        enfiler(tapis, p);
        printf("Producteur: %s\n", newname);

        cible--;
        cpt++;
        ft_cooperate();
    }

    printf("Fin producteur\n");
}

void* messager(Tapis * tcons, Tapis* tprod){


}

int main()
{
    int i;

    // Les tapis initialisés
    Tapis tapis_prod;
    Tapis tapis_cons;
    tapis_cons.capacite = TAILLE;       
    tapis_cons.nbElem = 0;
    tapis_prod.capacite = TAILLE;       
    tapis_prod.nbElem = 0;


    compteur_sched = ft_scheduler_create();
    tcons_sched = ft_scheduler_create();
    tprod_sched = ft_scheduler_create();

    endConso = ft_event_create(compteur_sched);
    plusVide = ft_event_create(tapis_sched);
    plusPlein = ft_event_create(tapis_sched);

    ProdArgs pargs;
    pargs.tapis = tapis_prod;
    pargs.cible = 3;
    strcpy(pargs.nom, "pomme");

    ConsoArgs cargs;
    *(cargs.tapis) = tapis_cons;

    //Lancement thread producteurs

    for (i = 0; i < NBPROD; i++)
    {
        ft_thread_create(tprod_sched,producteur, NULL,&pargs);
    }

    for (i = 0; i < NBCONS; i++)
    {
        cargs.id = i;
        ft_thread_create(tcons_sched,consommateur, NULL,&cargs);
    }

    while(compteur>0){
        ft_await(endConso);
    }

    printf("END\n");
    
}