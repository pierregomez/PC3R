#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <sched.h>
#include <stdbool.h>
#include <unistd.h>

#define NbProd 2
#define NbCons 2
#define cibleProd 3

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t decMut = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t condProd = PTHREAD_COND_INITIALIZER;
pthread_cond_t condCons = PTHREAD_COND_INITIALIZER;

int compteur = NbProd * cibleProd;


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

typedef struct _Test
{
    int id;
    Tapis *tapis;
} TestArgs;
static int id = 0;

//Decremente avec mutex cpt et renvoi vrai si reussi
bool decremente(int *cpt)
{
    pthread_mutex_lock(&decMut);
    if (*cpt > 0)
    {
        (*cpt)--;
        pthread_mutex_unlock(&decMut);
        return true;
    }
    else
    {
        pthread_mutex_unlock(&decMut);
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

    pthread_mutex_lock(&mutex);
    //si full on attend
    while (tapis->capacite == tapis->nbobj)
    {
        pthread_cond_wait(&condProd, &mutex);
    }
    //on empile quand c'est libre
    empiler(tapis->pile, name);
    tapis->nbobj++;

    pthread_cond_broadcast(&condCons);
    pthread_mutex_unlock(&mutex);
}

char *defiler(Tapis *tapis)
{
    pthread_mutex_lock(&mutex);
    //si vide on attend
    while (tapis->nbobj == 0)
    {
        pthread_cond_wait(&condCons, &mutex);
    }
    //on depile et on garde le resultat qu'on renvoi
    char *res = malloc(sizeof(*res));
    strcpy(res, depiler(tapis->pile));
    tapis->nbobj--;
    pthread_cond_broadcast(&condProd);
    pthread_mutex_unlock(&mutex);
    return res;
}

void *consommateur(void *args)
{
    printf("Debut consommateur\n");
    TestArgs *arg = (TestArgs *)args;
    Tapis *tapis = arg->tapis;
    id++;

    while (decremente(&compteur))
    {
        printf("C%d mange %s\n", id, defiler(tapis));
    }
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

    // Le tapis initialisé
    Tapis tapis;
    tapis.pile = malloc(sizeof(tapis.pile));
    //initialisation de la pile
    tapis.pile->first = NULL; 
    tapis.capacite = 4;       
    tapis.nbobj = 0;

    //produits
    char produits[][10] = {
        "pomme",
        "poire"};

    //Thread producteur et consommateur
    pthread_t prods;
    pthread_t conss;

    ProdArgs args;
    args.tapis = tapis;
    args.cible = 3;
    strcpy(args.nom, "pomme");

    TestArgs *test = malloc(sizeof(test));
    test->tapis = &args.tapis;

    //Lancement thread producteurs

    for (i = 0; i < NbProd; i++)
    {
        pthread_create(&prods, NULL, &producteur, &args);
    }

    for (i = 0; i < NbCons; i++)
    {
        test->id = i;
        pthread_create(&conss, NULL, &consommateur, test);
    }

    pthread_join(conss, NULL);
    pthread_join(prods, NULL);

    printf("END\n");
    
}