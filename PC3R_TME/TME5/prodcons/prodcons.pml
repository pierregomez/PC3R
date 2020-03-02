#define MAX 10
#define SIZE 3
mtype={p,s,d,r}
chan obs = [0] of {mtype}
chan ack = [0] of {int}
proctype producteur (chan min,int id, chan fini){
    int n=1
    int k
    debut:
        obs!p,ack?k
        min!n
        printf("Prod %d produit %d\n",id,n)
        if
            :: n<MAX -> n=n+1;goto debut
            :: n>=MAX -> goto fin
        fi
        fini!0
}

proctype consommateur (chan mout,int id){
    int k,l
    debut:
        obs!r
        ack?k
        mout?k
        printf("Consommateur %d consomme %d",id,k)
        goto debut
}

proctype gestionnaire (chan min,chan mout){
    int tableau[SIZE]
    int courant = 0
    int i,k,l
    do
        ::courant<SIZE -> min?k
            obs!s
            ack?l
            atomic{
                tableau[courant]=k
                printf("Gestionnaire stocke %d",k)
                courant=courant+1
            }
        ::courant>0 -> obs!d
            ack?l
            mout!tableau[0]
            atomic{
                courant=courant-1
                for(i:0..(courant-1)){
                    tableau[i]=tableau[i+1]
                }
            }
    od
}

init {
    int j,k
    chan min=[0]of{int}
    chan mout=[0]of{int}
    chan fini=[0]of{int}
    run observateur(obs,ack)
    for(j:1..10){
        run producteur(min,j,fini)
    }
    run gestionnaire(min,mout)
    for(j:1..3){
        run consommateur(mout,j)
    }
    for(j:1..10){
        fini?k
    }
}

proctype observateur(chan obs,chan ack){
    int produits=0
    int stocks = 0
    int recus = 0
    mtype m
    loop:
        assert(produits>=stocks+recus)
        assert(stocks<=SIZE)
        assert(stocks>=0)
        obs?m -> if
            :: m == p -> produits=produits+1
            :: m == s -> stocks=stocks+1
            :: m == d -> stocks=stocks-1
            :: m == r -> recus=recus+1
        fi
        ack!0
        goto loop

}