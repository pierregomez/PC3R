#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC observateur */
	case 3: // STATE 1 - feu.pml:63 - [observe?courant,clignotant] (0:0:2 - 1)
		reached[1][1] = 1;
		if (boq != now.observe) continue;
		if (q_len(now.observe) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->courant;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->clignotant);
		;
		((P1 *)this)->courant = qrecv(now.observe, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("observateur:courant", ((P1 *)this)->courant);
#endif
		;
		((P1 *)this)->clignotant = qrecv(now.observe, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("observateur:clignotant", ((int)((P1 *)this)->clignotant));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observe);
		sprintf(simtmp, "%d", ((P1 *)this)->courant); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.observe))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - feu.pml:65 - [((courant==ORANGE))] (19:0:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->courant==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: courant */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->courant;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->courant = 0;
		/* merge: assert(((precedent!=ROUGE)||clignotant))(19, 3, 19) */
		reached[1][3] = 1;
		spin_assert(((((P1 *)this)->precedent!=4)||((int)((P1 *)this)->clignotant)), "((precedent!=4)||clignotant)", II, tt, t);
		/* merge: precedent = ORANGE(19, 4, 19) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->precedent;
		((P1 *)this)->precedent = 3;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 5: // STATE 6 - feu.pml:66 - [((courant==ROUGE))] (19:0:2 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!((((P1 *)this)->courant==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: courant */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->courant;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->courant = 0;
		/* merge: assert((precedent!=VERT))(19, 7, 19) */
		reached[1][7] = 1;
		spin_assert((((P1 *)this)->precedent!=2), "(precedent!=2)", II, tt, t);
		/* merge: precedent = ROUGE(19, 8, 19) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->precedent;
		((P1 *)this)->precedent = 4;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 6: // STATE 10 - feu.pml:67 - [((courant==VERT))] (19:0:2 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((P1 *)this)->courant==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: courant */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->courant;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->courant = 0;
		/* merge: assert((precedent!=ORANGE))(19, 11, 19) */
		reached[1][11] = 1;
		spin_assert((((P1 *)this)->precedent!=3), "(precedent!=3)", II, tt, t);
		/* merge: precedent = VERT(19, 12, 19) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->precedent;
		((P1 *)this)->precedent = 2;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 7: // STATE 14 - feu.pml:68 - [(clignotant)] (19:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!(((int)((P1 *)this)->clignotant)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: clignotant */  (trpt+1)->bup.oval = ((P1 *)this)->clignotant;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->clignotant = 0;
		/* merge: assert((courant==ORANGE))(0, 15, 19) */
		reached[1][15] = 1;
		spin_assert((((P1 *)this)->courant==3), "(courant==3)", II, tt, t);
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 8: // STATE 22 - feu.pml:71 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC feu */
	case 9: // STATE 1 - feu.pml:7 - [couleur = ORANGE] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->couleur;
		((P0 *)this)->couleur = 3;
#ifdef VAR_RANGES
		logval("feu:couleur", ((P0 *)this)->couleur);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - feu.pml:8 - [clignotant = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->clignotant);
		((P0 *)this)->clignotant = 1;
#ifdef VAR_RANGES
		logval("feu:clignotant", ((int)((P0 *)this)->clignotant));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - feu.pml:9 - [observe!couleur,clignotant] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_len(now.observe))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observe);
		sprintf(simtmp, "%d", ((P0 *)this)->couleur); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observe, 0, ((P0 *)this)->couleur, ((int)((P0 *)this)->clignotant), 2);
		{ boq = now.observe; };
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 4 - feu.pml:11 - [(1)] (12:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(1))
			continue;
		/* merge: clignotant = 0(0, 5, 12) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->clignotant);
		((P0 *)this)->clignotant = 0;
#ifdef VAR_RANGES
		logval("feu:clignotant", ((int)((P0 *)this)->clignotant));
#endif
		;
		/* merge: goto red(0, 6, 12) */
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 10 - feu.pml:16 - [couleur = ROUGE] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->couleur;
		((P0 *)this)->couleur = 4;
#ifdef VAR_RANGES
		logval("feu:couleur", ((P0 *)this)->couleur);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - feu.pml:17 - [observe!couleur,clignotant] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_len(now.observe))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observe);
		sprintf(simtmp, "%d", ((P0 *)this)->couleur); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observe, 0, ((P0 *)this)->couleur, ((int)((P0 *)this)->clignotant), 2);
		{ boq = now.observe; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 21 - feu.pml:26 - [couleur = VERT] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->couleur;
		((P0 *)this)->couleur = 2;
#ifdef VAR_RANGES
		logval("feu:couleur", ((P0 *)this)->couleur);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 22 - feu.pml:27 - [observe!couleur,clignotant] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (q_len(now.observe))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observe);
		sprintf(simtmp, "%d", ((P0 *)this)->couleur); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observe, 0, ((P0 *)this)->couleur, ((int)((P0 *)this)->clignotant), 2);
		{ boq = now.observe; };
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 32 - feu.pml:36 - [couleur = ORANGE] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->couleur;
		((P0 *)this)->couleur = 3;
#ifdef VAR_RANGES
		logval("feu:couleur", ((P0 *)this)->couleur);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 33 - feu.pml:37 - [observe!couleur,clignotant] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (q_len(now.observe))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observe);
		sprintf(simtmp, "%d", ((P0 *)this)->couleur); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observe, 0, ((P0 *)this)->couleur, ((int)((P0 *)this)->clignotant), 2);
		{ boq = now.observe; };
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 43 - feu.pml:45 - [clignotant = 1] (0:0:1 - 7)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->clignotant);
		((P0 *)this)->clignotant = 1;
#ifdef VAR_RANGES
		logval("feu:clignotant", ((int)((P0 *)this)->clignotant));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 45 - feu.pml:50 - [couleur = ORANGE] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->couleur;
		((P0 *)this)->couleur = 3;
#ifdef VAR_RANGES
		logval("feu:couleur", ((P0 *)this)->couleur);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 46 - feu.pml:51 - [observe!couleur,clignotant] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_len(now.observe))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observe);
		sprintf(simtmp, "%d", ((P0 *)this)->couleur); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->clignotant)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observe, 0, ((P0 *)this)->couleur, ((int)((P0 *)this)->clignotant), 2);
		{ boq = now.observe; };
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 52 - feu.pml:56 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

