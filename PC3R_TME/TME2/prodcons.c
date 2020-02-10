#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <sched.h>
#include <stdbool.h>
#include <unistd.h>
#include "fthread.h"

#define NbProd 2
#define NbCons 2
#define cibleProd 3


int compteur = NbProd * cibleProd;


ft_scheduler_t compteur_sched;
ft_scheduler_t tapis_sched;

ft_event_t endConso;
ft_event_t plusVide;
ft_event_t plusPlein;

typedef struct Produit produit;
struct Produit
{
    char nom[32];
    produit *next;
};

typedef struct Pile pile;
struct Pile
{
    produit *first;
};

typedef struct Tapis Tapis;
struct Tapis
{
    pile *pile;
    int capacite;
    int nbobj;
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

//Decremente avec mutex cpt et renvoi vrai si reussi
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

void empiler(pile *pile, char p[])
{
    //creation d'un new produit
    produit *new = malloc(sizeof(*new));

    if (pile == NULL || new == NULL)
    {
        exit(EXIT_FAILURE);
    }

    //init le new
    strcpy(new->nom, p);
    new->next = NULL;

    //insertion fin si non vide sinon tete
    if (pile->first != NULL)
    {
        produit *current = pile->first;
        while (current->next != NULL)
        {
            current = current->next;
        }

        current->next = new;
    }
    else
        pile->first = new;
}

char *depiler(pile *pile)
{
    if (pile == NULL)
    {
        exit(EXIT_FAILURE);
    }

    char *res = malloc(sizeof(*res));

    //si pile non vide on la parcourt
    if (pile->first != NULL)
    {
        //on recup le first et on met dans res le nom de l'elem
        produit *elem = pile->first;
        strcpy(res, elem->nom);
        //on passe a l'elem suivant et on libere l'elem
        pile->first = elem->next;
        free(elem);
        //on retourne le nom
        return res;
    }
    return NULL;
}

void enfiler(Tapis *tapis, char name[])
{

    //si full on attend
    while (tapis->capacite == tapis->nbobj)
    {
        ft_await(plusPlein);
    }
    //on empile quand c'est libre
    empiler(tapis->pile, name);
    tapis->nbobj++;

    ft_broadcast(plusVide);
}

char *defiler(Tapis *tapis)
{
    //si vide on attend
    while (tapis->nbobj == 0)
    {
        ft_await(plusVide);
    }
    //on depile et on garde le resultat qu'on renvoi
    char *res = malloc(sizeof(*res));
    strcpy(res, depiler(tapis->pile));
    tapis->nbobj--;
    ft_broadcast(plusPlein);
    return res;
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
        enfiler(tapis, newname);
        printf("Producteur: %s\n", newname);

        cible--;
        cpt++;
    }

    printf("Fin producteur\n");
}
int main()
{
    int i;

    // Les tapis initialisés
    Tapis tapis_prod;
    Tapis tapis_cons;
    tapis_prod.pile = malloc(sizeof(tapis_prod.pile));
    tapis_cons.pile = malloc(sizeof(tapis_cons.pile));
    //initialisation de la pile
    tapis_cons.pile->first = NULL; 
    tapis_cons.capacite = 4;       
    tapis_cons.nbobj = 0;
    tapis_prod.pile->first = NULL; 
    tapis_prod.capacite = 4;       
    tapis_prod.nbobj = 0;

    //produits
    char produits[][10] = {
        "pomme",
        "poire"};

    compteur_sched       = ft_scheduler_create();
    tapis_sched       = ft_scheduler_create();

    endConso         = ft_event_create(compteur_sched);
    plusVide        = ft_event_create(tapis_sched);
    plusPlein        = ft_event_create(tapis_sched);

    ProdArgs pargs;
    pargs.tapis = tapis_prod;
    pargs.cible = 3;
    strcpy(pargs.nom, "pomme");

    ConsoArgs cargs;
    *(cargs.tapis) = tapis_cons;

    //Lancement thread producteurs

    for (i = 0; i < NbProd; i++)
    {
        ft_thread_create(tapis_sched,producteur, NULL,&pargs);
    }

    for (i = 0; i < NbCons; i++)
    {
        cargs.id = i;
        ft_thread_create(tapis_sched,consommateur, NULL,&cargs);
    }

    while(compteur>0){
        ft_await(endConso);
    }

    printf("END\n");
    
}