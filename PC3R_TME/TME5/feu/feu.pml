mtype{ROUGE,ORANGE,VERT,INDETERMINEE};
chan observe = [0] of {mtype,bool}
active proctype feu(){
    bool clignotant = false;
    mtype couleur = INDETERMINEE
    intitial :
        couleur = ORANGE;
        clignotant = true;
        observe!couleur,clignotant
        if
            ::true -> clignotant=false; goto red;
            ::goto intitial
        fi
    red:
        atomic{
            couleur=ROUGE;
            observe!couleur,clignotant
        }
        if
            ::true->goto red
            ::true->goto green
            ::true->goto fault
        fi
    green:
        atomic{
            couleur=VERT
            observe!couleur,clignotant
        }
        if
            ::true->goto green
            ::true->goto orange
            ::true->goto fault
        fi
    orange:
        atomic{
            couleur=ORANGE;
            observe!couleur,clignotant
        }
        if
            ::true->goto orange
            ::true->goto red
            ::true->goto fault
        fi
    fault:
        clignotant = true
        goto fault_loop
    fault_loop:
        
        atomic{
            couleur=ORANGE;
            observe!couleur,clignotant
        }
        if
            ::true->goto fault_loop
        fi
}

active proctype observateur(){
    mtype precedent = INDETERMINEE
    mtype courant = INDETERMINEE
    bool clignotant = false
    do
        ::observe?courant,clignotant -> 
            if 
                ::atomic{courant==ORANGE->assert(precedent!=ROUGE||clignotant);precedent = ORANGE}
                ::atomic{courant==ROUGE->assert(precedent!=VERT);precedent = ROUGE}
                ::atomic{courant==VERT->assert(precedent!=ORANGE);precedent = VERT}
                ::atomic{clignotant -> assert(courant==ORANGE)}
            fi
    od
}