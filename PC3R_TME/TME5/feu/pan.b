	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC observateur */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.observe, XX-1, 0, ((P1 *)this)->courant, 1);
		unrecv(now.observe, XX-1, 1, ((int)((P1 *)this)->clignotant), 0);
		((P1 *)this)->courant = trpt->bup.ovals[0];
		((P1 *)this)->clignotant = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 4: // STATE 4
		;
		((P1 *)this)->precedent = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->courant = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 5: // STATE 8
		;
		((P1 *)this)->precedent = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->courant = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 6: // STATE 12
		;
		((P1 *)this)->precedent = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->courant = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 7: // STATE 14
		;
	/* 0 */	((P1 *)this)->clignotant = trpt->bup.oval;
		;
		;
		goto R999;

	case 8: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC feu */

	case 9: // STATE 1
		;
		((P0 *)this)->couleur = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 2
		;
		((P0 *)this)->clignotant = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 3
		;
		_m = unsend(now.observe);
		;
		goto R999;

	case 12: // STATE 5
		;
		((P0 *)this)->clignotant = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 10
		;
		((P0 *)this)->couleur = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 11
		;
		_m = unsend(now.observe);
		;
		goto R999;

	case 15: // STATE 21
		;
		((P0 *)this)->couleur = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 22
		;
		_m = unsend(now.observe);
		;
		goto R999;

	case 17: // STATE 32
		;
		((P0 *)this)->couleur = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 33
		;
		_m = unsend(now.observe);
		;
		goto R999;

	case 19: // STATE 43
		;
		((P0 *)this)->clignotant = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 45
		;
		((P0 *)this)->couleur = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 46
		;
		_m = unsend(now.observe);
		;
		goto R999;

	case 22: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;
	}

