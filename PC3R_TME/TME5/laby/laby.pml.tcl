# maxx 1
wm title . "scenario"
wm geometry . 480x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 240 0 364 20 -fill black
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 239 -2 361 18 -fill ivory
.c create text 300 8 -text "1:observateur"
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 115 0 169 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 114 -2 166 18 -fill ivory
.c create text 140 8 -text "0:laby"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 300 32 -fill #eef -dash {6 4}
.c create line 140 36 140 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 1 (Used 1 nobox 0)
# ProcLine[1] stays at 1 (Used 1 nobox 1)
.c create rectangle 103 22 177 42 -fill white -width 0
.c create text 140 32 -text "go!NORTH"
.c create line 140 42 220 42 -fill darkred -tags mesg -width 2
.c create line 220 42 300 42 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 300 56 -fill #eef -dash {6 4}
.c create line 300 36 300 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 3 (Used 1 nobox 1)
# ProcLine[2] stays at 3 (Used 1 nobox 1)
.c create rectangle 263 46 337 66 -fill white -width 0
.c create text 300 56 -text "go?NORTH"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 300 80 -fill #eef -dash {6 4}
.c create line 300 72 300 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 3 to 5 (Used 1 nobox 1)
# ProcLine[2] stays at 5 (Used 1 nobox 1)
.c create rectangle 258 70 342 90 -fill white -width 0
.c create text 300 80 -text "go NORTH"
.c create text 70 104 -fill #eef -text "7"
.c create line 140 104 300 104 -fill #eef -dash {6 4}
.c create line 140 48 140 92 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1 to 7 (Used 1 nobox 1)
# ProcLine[1] stays at 7 (Used 1 nobox 1)
.c create rectangle 103 94 177 114 -fill white -width 0
.c create text 140 104 -text "go!NORTH"
.c create line 140 114 220 114 -fill darkred -tags mesg -width 2
.c create line 220 114 300 114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 300 128 -fill #eef -dash {6 4}
.c create line 300 96 300 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 5 to 9 (Used 1 nobox 1)
# ProcLine[2] stays at 9 (Used 1 nobox 1)
.c create rectangle 263 118 337 138 -fill white -width 0
.c create text 300 128 -text "go?NORTH"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 300 152 -fill #eef -dash {6 4}
.c create line 300 144 300 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 9 to 11 (Used 1 nobox 1)
# ProcLine[2] stays at 11 (Used 1 nobox 1)
.c create rectangle 258 142 342 162 -fill white -width 0
.c create text 300 152 -text "go NORTH"
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 300 176 -fill #eef -dash {6 4}
.c create line 140 120 140 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 7 to 13 (Used 1 nobox 1)
# ProcLine[1] stays at 13 (Used 1 nobox 1)
.c create rectangle 103 166 177 186 -fill white -width 0
.c create text 140 176 -text "go!NORTH"
.c create line 140 186 220 186 -fill darkred -tags mesg -width 2
.c create line 220 186 300 186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 300 200 -fill #eef -dash {6 4}
.c create line 300 168 300 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 11 to 15 (Used 1 nobox 1)
# ProcLine[2] stays at 15 (Used 1 nobox 1)
.c create rectangle 263 190 337 210 -fill white -width 0
.c create text 300 200 -text "go?NORTH"
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 300 224 -fill #eef -dash {6 4}
.c create line 300 216 300 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 15 to 17 (Used 1 nobox 1)
# ProcLine[2] stays at 17 (Used 1 nobox 1)
.c create rectangle 258 214 342 234 -fill white -width 0
.c create text 300 224 -text "go NORTH"
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 300 248 -fill #eef -dash {6 4}
.c create line 140 192 140 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 13 to 19 (Used 1 nobox 1)
# ProcLine[1] stays at 19 (Used 1 nobox 1)
.c create rectangle 103 238 177 258 -fill white -width 0
.c create text 140 248 -text "go!NORTH"
.c create line 140 258 220 258 -fill darkred -tags mesg -width 2
.c create line 220 258 300 258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 300 272 -fill #eef -dash {6 4}
.c create line 300 240 300 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 17 to 21 (Used 1 nobox 1)
# ProcLine[2] stays at 21 (Used 1 nobox 1)
.c create rectangle 263 262 337 282 -fill white -width 0
.c create text 300 272 -text "go?NORTH"
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 300 296 -fill #eef -dash {6 4}
.c create line 300 288 300 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 21 to 23 (Used 1 nobox 1)
# ProcLine[2] stays at 23 (Used 1 nobox 1)
.c create rectangle 258 286 342 306 -fill white -width 0
.c create text 300 296 -text "go NORTH"
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 300 320 -fill #eef -dash {6 4}
.c create line 140 264 140 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 19 to 25 (Used 1 nobox 1)
# ProcLine[1] stays at 25 (Used 1 nobox 1)
.c create rectangle 103 310 177 330 -fill white -width 0
.c create text 140 320 -text "go!SOUTH"
.c create line 140 330 220 330 -fill darkred -tags mesg -width 2
.c create line 220 330 300 330 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 300 344 -fill #eef -dash {6 4}
.c create line 300 312 300 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 23 to 27 (Used 1 nobox 1)
# ProcLine[2] stays at 27 (Used 1 nobox 1)
.c create rectangle 263 334 337 354 -fill white -width 0
.c create text 300 344 -text "go?SOUTH"
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 300 368 -fill #eef -dash {6 4}
.c create line 300 360 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 27 to 29 (Used 1 nobox 1)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 258 358 342 378 -fill white -width 0
.c create text 300 368 -text "go SOUTH"
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 300 392 -fill #eef -dash {6 4}
.c create line 140 336 140 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 25 to 31 (Used 1 nobox 1)
# ProcLine[1] stays at 31 (Used 1 nobox 1)
.c create rectangle 103 382 177 402 -fill white -width 0
.c create text 140 392 -text "go!NORTH"
.c create line 140 402 220 402 -fill darkred -tags mesg -width 2
.c create line 220 402 300 402 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 416 -fill #eef -text "33"
.c create line 140 416 300 416 -fill #eef -dash {6 4}
.c create line 300 384 300 404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 29 to 33 (Used 1 nobox 1)
# ProcLine[2] stays at 33 (Used 1 nobox 1)
.c create rectangle 263 406 337 426 -fill white -width 0
.c create text 300 416 -text "go?NORTH"
.c create text 70 440 -fill #eef -text "35"
.c create line 140 440 300 440 -fill #eef -dash {6 4}
.c create line 300 432 300 428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 33 to 35 (Used 1 nobox 1)
# ProcLine[2] stays at 35 (Used 1 nobox 1)
.c create rectangle 258 430 342 450 -fill white -width 0
.c create text 300 440 -text "go NORTH"
.c create text 70 464 -fill #eef -text "37"
.c create line 140 464 300 464 -fill #eef -dash {6 4}
.c create line 140 408 140 452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 31 to 37 (Used 1 nobox 1)
# ProcLine[1] stays at 37 (Used 1 nobox 1)
.c create rectangle 103 454 177 474 -fill white -width 0
.c create text 140 464 -text "go!NORTH"
.c create line 140 474 220 474 -fill darkred -tags mesg -width 2
.c create line 220 474 300 474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 488 -fill #eef -text "39"
.c create line 140 488 300 488 -fill #eef -dash {6 4}
.c create line 300 456 300 476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 35 to 39 (Used 1 nobox 1)
# ProcLine[2] stays at 39 (Used 1 nobox 1)
.c create rectangle 263 478 337 498 -fill white -width 0
.c create text 300 488 -text "go?NORTH"
.c create text 70 512 -fill #eef -text "41"
.c create line 140 512 300 512 -fill #eef -dash {6 4}
.c create line 300 504 300 500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 39 to 41 (Used 1 nobox 1)
# ProcLine[2] stays at 41 (Used 1 nobox 1)
.c create rectangle 258 502 342 522 -fill white -width 0
.c create text 300 512 -text "go NORTH"
.c create text 70 536 -fill #eef -text "43"
.c create line 140 536 300 536 -fill #eef -dash {6 4}
.c create line 140 480 140 524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 37 to 43 (Used 1 nobox 1)
# ProcLine[1] stays at 43 (Used 1 nobox 1)
.c create rectangle 103 526 177 546 -fill white -width 0
.c create text 140 536 -text "go!SOUTH"
.c create line 140 546 220 546 -fill darkred -tags mesg -width 2
.c create line 220 546 300 546 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 560 -fill #eef -text "45"
.c create line 140 560 300 560 -fill #eef -dash {6 4}
.c create line 300 528 300 548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 41 to 45 (Used 1 nobox 1)
# ProcLine[2] stays at 45 (Used 1 nobox 1)
.c create rectangle 263 550 337 570 -fill white -width 0
.c create text 300 560 -text "go?SOUTH"
.c create text 70 584 -fill #eef -text "47"
.c create line 140 584 300 584 -fill #eef -dash {6 4}
.c create line 300 576 300 572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 45 to 47 (Used 1 nobox 1)
# ProcLine[2] stays at 47 (Used 1 nobox 1)
.c create rectangle 258 574 342 594 -fill white -width 0
.c create text 300 584 -text "go SOUTH"
.c create text 70 608 -fill #eef -text "49"
.c create line 140 608 300 608 -fill #eef -dash {6 4}
.c create line 140 552 140 596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 43 to 49 (Used 1 nobox 1)
# ProcLine[1] stays at 49 (Used 1 nobox 1)
.c create rectangle 103 598 177 618 -fill white -width 0
.c create text 140 608 -text "go!NORTH"
.c create line 140 618 220 618 -fill darkred -tags mesg -width 2
.c create line 220 618 300 618 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 632 -fill #eef -text "51"
.c create line 140 632 300 632 -fill #eef -dash {6 4}
.c create line 300 600 300 620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 47 to 51 (Used 1 nobox 1)
# ProcLine[2] stays at 51 (Used 1 nobox 1)
.c create rectangle 263 622 337 642 -fill white -width 0
.c create text 300 632 -text "go?NORTH"
.c create text 70 656 -fill #eef -text "53"
.c create line 140 656 300 656 -fill #eef -dash {6 4}
.c create line 300 648 300 644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 51 to 53 (Used 1 nobox 1)
# ProcLine[2] stays at 53 (Used 1 nobox 1)
.c create rectangle 258 646 342 666 -fill white -width 0
.c create text 300 656 -text "go NORTH"
.c create text 70 680 -fill #eef -text "55"
.c create line 140 680 300 680 -fill #eef -dash {6 4}
.c create line 140 624 140 668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 49 to 55 (Used 1 nobox 1)
# ProcLine[1] stays at 55 (Used 1 nobox 1)
.c create rectangle 103 670 177 690 -fill white -width 0
.c create text 140 680 -text "go!SOUTH"
.c create line 140 690 220 690 -fill darkred -tags mesg -width 2
.c create line 220 690 300 690 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 704 -fill #eef -text "57"
.c create line 140 704 300 704 -fill #eef -dash {6 4}
.c create line 300 672 300 692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 53 to 57 (Used 1 nobox 1)
# ProcLine[2] stays at 57 (Used 1 nobox 1)
.c create rectangle 263 694 337 714 -fill white -width 0
.c create text 300 704 -text "go?SOUTH"
.c create text 70 728 -fill #eef -text "59"
.c create line 140 728 300 728 -fill #eef -dash {6 4}
.c create line 300 720 300 716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 57 to 59 (Used 1 nobox 1)
# ProcLine[2] stays at 59 (Used 1 nobox 1)
.c create rectangle 258 718 342 738 -fill white -width 0
.c create text 300 728 -text "go SOUTH"
.c create text 70 752 -fill #eef -text "61"
.c create line 140 752 300 752 -fill #eef -dash {6 4}
.c create line 140 696 140 740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 55 to 61 (Used 1 nobox 1)
# ProcLine[1] stays at 61 (Used 1 nobox 1)
.c create rectangle 103 742 177 762 -fill white -width 0
.c create text 140 752 -text "go!NORTH"
.c create line 140 762 220 762 -fill darkred -tags mesg -width 2
.c create line 220 762 300 762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 776 -fill #eef -text "63"
.c create line 140 776 300 776 -fill #eef -dash {6 4}
.c create line 300 744 300 764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 59 to 63 (Used 1 nobox 1)
# ProcLine[2] stays at 63 (Used 1 nobox 1)
.c create rectangle 263 766 337 786 -fill white -width 0
.c create text 300 776 -text "go?NORTH"
.c create text 70 800 -fill #eef -text "65"
.c create line 140 800 300 800 -fill #eef -dash {6 4}
.c create line 300 792 300 788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 63 to 65 (Used 1 nobox 1)
# ProcLine[2] stays at 65 (Used 1 nobox 1)
.c create rectangle 258 790 342 810 -fill white -width 0
.c create text 300 800 -text "go NORTH"
.c create text 70 824 -fill #eef -text "67"
.c create line 140 824 300 824 -fill #eef -dash {6 4}
.c create line 140 768 140 812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 61 to 67 (Used 1 nobox 1)
# ProcLine[1] stays at 67 (Used 1 nobox 1)
.c create rectangle 103 814 177 834 -fill white -width 0
.c create text 140 824 -text "go!SOUTH"
.c create line 140 834 220 834 -fill darkred -tags mesg -width 2
.c create line 220 834 300 834 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 848 -fill #eef -text "69"
.c create line 140 848 300 848 -fill #eef -dash {6 4}
.c create line 300 816 300 836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 65 to 69 (Used 1 nobox 1)
# ProcLine[2] stays at 69 (Used 1 nobox 1)
.c create rectangle 263 838 337 858 -fill white -width 0
.c create text 300 848 -text "go?SOUTH"
.c create text 70 872 -fill #eef -text "71"
.c create line 140 872 300 872 -fill #eef -dash {6 4}
.c create line 300 864 300 860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 69 to 71 (Used 1 nobox 1)
# ProcLine[2] stays at 71 (Used 1 nobox 1)
.c create rectangle 258 862 342 882 -fill white -width 0
.c create text 300 872 -text "go SOUTH"
.c create text 70 896 -fill #eef -text "73"
.c create line 140 896 300 896 -fill #eef -dash {6 4}
.c create line 140 840 140 884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 67 to 73 (Used 1 nobox 1)
# ProcLine[1] stays at 73 (Used 1 nobox 1)
.c create rectangle 103 886 177 906 -fill white -width 0
.c create text 140 896 -text "go!NORTH"
.c create line 140 906 220 906 -fill darkred -tags mesg -width 2
.c create line 220 906 300 906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 920 -fill #eef -text "75"
.c create line 140 920 300 920 -fill #eef -dash {6 4}
.c create line 300 888 300 908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 71 to 75 (Used 1 nobox 1)
# ProcLine[2] stays at 75 (Used 1 nobox 1)
.c create rectangle 263 910 337 930 -fill white -width 0
.c create text 300 920 -text "go?NORTH"
.c create text 70 944 -fill #eef -text "77"
.c create line 140 944 300 944 -fill #eef -dash {6 4}
.c create line 300 936 300 932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 75 to 77 (Used 1 nobox 1)
# ProcLine[2] stays at 77 (Used 1 nobox 1)
.c create rectangle 258 934 342 954 -fill white -width 0
.c create text 300 944 -text "go NORTH"
.c create text 70 968 -fill #eef -text "79"
.c create line 140 968 300 968 -fill #eef -dash {6 4}
.c create line 140 912 140 956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 73 to 79 (Used 1 nobox 1)
# ProcLine[1] stays at 79 (Used 1 nobox 1)
.c create rectangle 103 958 177 978 -fill white -width 0
.c create text 140 968 -text "go!SOUTH"
.c create line 140 978 220 978 -fill darkred -tags mesg -width 2
.c create line 220 978 300 978 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 992 -fill #eef -text "81"
.c create line 140 992 300 992 -fill #eef -dash {6 4}
.c create line 300 960 300 980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 77 to 81 (Used 1 nobox 1)
# ProcLine[2] stays at 81 (Used 1 nobox 1)
.c create rectangle 263 982 337 1002 -fill white -width 0
.c create text 300 992 -text "go?SOUTH"
.c create text 70 1016 -fill #eef -text "83"
.c create line 140 1016 300 1016 -fill #eef -dash {6 4}
.c create line 300 1008 300 1004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 81 to 83 (Used 1 nobox 1)
# ProcLine[2] stays at 83 (Used 1 nobox 1)
.c create rectangle 258 1006 342 1026 -fill white -width 0
.c create text 300 1016 -text "go SOUTH"
.c create text 70 1040 -fill #eef -text "85"
.c create line 140 1040 300 1040 -fill #eef -dash {6 4}
.c create line 140 984 140 1028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 79 to 85 (Used 1 nobox 1)
# ProcLine[1] stays at 85 (Used 1 nobox 1)
.c create rectangle 103 1030 177 1050 -fill white -width 0
.c create text 140 1040 -text "go!NORTH"
.c create line 140 1050 220 1050 -fill darkred -tags mesg -width 2
.c create line 220 1050 300 1050 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1064 -fill #eef -text "87"
.c create line 140 1064 300 1064 -fill #eef -dash {6 4}
.c create line 300 1032 300 1052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 83 to 87 (Used 1 nobox 1)
# ProcLine[2] stays at 87 (Used 1 nobox 1)
.c create rectangle 263 1054 337 1074 -fill white -width 0
.c create text 300 1064 -text "go?NORTH"
.c create text 70 1088 -fill #eef -text "89"
.c create line 140 1088 300 1088 -fill #eef -dash {6 4}
.c create line 300 1080 300 1076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 87 to 89 (Used 1 nobox 1)
# ProcLine[2] stays at 89 (Used 1 nobox 1)
.c create rectangle 258 1078 342 1098 -fill white -width 0
.c create text 300 1088 -text "go NORTH"
.c create text 70 1112 -fill #eef -text "91"
.c create line 140 1112 300 1112 -fill #eef -dash {6 4}
.c create line 140 1056 140 1100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 85 to 91 (Used 1 nobox 1)
# ProcLine[1] stays at 91 (Used 1 nobox 1)
.c create rectangle 103 1102 177 1122 -fill white -width 0
.c create text 140 1112 -text "go!SOUTH"
.c create line 140 1122 220 1122 -fill darkred -tags mesg -width 2
.c create line 220 1122 300 1122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1136 -fill #eef -text "93"
.c create line 140 1136 300 1136 -fill #eef -dash {6 4}
.c create line 300 1104 300 1124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 89 to 93 (Used 1 nobox 1)
# ProcLine[2] stays at 93 (Used 1 nobox 1)
.c create rectangle 263 1126 337 1146 -fill white -width 0
.c create text 300 1136 -text "go?SOUTH"
.c create text 70 1160 -fill #eef -text "95"
.c create line 140 1160 300 1160 -fill #eef -dash {6 4}
.c create line 300 1152 300 1148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 93 to 95 (Used 1 nobox 1)
# ProcLine[2] stays at 95 (Used 1 nobox 1)
.c create rectangle 258 1150 342 1170 -fill white -width 0
.c create text 300 1160 -text "go SOUTH"
.c create text 70 1184 -fill #eef -text "97"
.c create line 140 1184 300 1184 -fill #eef -dash {6 4}
.c create line 140 1128 140 1172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 91 to 97 (Used 1 nobox 1)
# ProcLine[1] stays at 97 (Used 1 nobox 1)
.c create rectangle 103 1174 177 1194 -fill white -width 0
.c create text 140 1184 -text "go!NORTH"
.c create line 140 1194 220 1194 -fill darkred -tags mesg -width 2
.c create line 220 1194 300 1194 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1208 -fill #eef -text "99"
.c create line 140 1208 300 1208 -fill #eef -dash {6 4}
.c create line 300 1176 300 1196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 95 to 99 (Used 1 nobox 1)
# ProcLine[2] stays at 99 (Used 1 nobox 1)
.c create rectangle 263 1198 337 1218 -fill white -width 0
.c create text 300 1208 -text "go?NORTH"
.c create text 70 1232 -fill #eef -text "101"
.c create line 140 1232 300 1232 -fill #eef -dash {6 4}
.c create line 300 1224 300 1220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 99 to 101 (Used 1 nobox 1)
# ProcLine[2] stays at 101 (Used 1 nobox 1)
.c create rectangle 258 1222 342 1242 -fill white -width 0
.c create text 300 1232 -text "go NORTH"
.c create text 70 1256 -fill #eef -text "103"
.c create line 140 1256 300 1256 -fill #eef -dash {6 4}
.c create line 140 1200 140 1244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 97 to 103 (Used 1 nobox 1)
# ProcLine[1] stays at 103 (Used 1 nobox 1)
.c create rectangle 103 1246 177 1266 -fill white -width 0
.c create text 140 1256 -text "go!SOUTH"
.c create line 140 1266 220 1266 -fill darkred -tags mesg -width 2
.c create line 220 1266 300 1266 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1280 -fill #eef -text "105"
.c create line 140 1280 300 1280 -fill #eef -dash {6 4}
.c create line 300 1248 300 1268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 101 to 105 (Used 1 nobox 1)
# ProcLine[2] stays at 105 (Used 1 nobox 1)
.c create rectangle 263 1270 337 1290 -fill white -width 0
.c create text 300 1280 -text "go?SOUTH"
.c create text 70 1304 -fill #eef -text "107"
.c create line 140 1304 300 1304 -fill #eef -dash {6 4}
.c create line 300 1296 300 1292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 105 to 107 (Used 1 nobox 1)
# ProcLine[2] stays at 107 (Used 1 nobox 1)
.c create rectangle 258 1294 342 1314 -fill white -width 0
.c create text 300 1304 -text "go SOUTH"
.c create text 70 1328 -fill #eef -text "109"
.c create line 140 1328 300 1328 -fill #eef -dash {6 4}
.c create line 140 1272 140 1316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 103 to 109 (Used 1 nobox 1)
# ProcLine[1] stays at 109 (Used 1 nobox 1)
.c create rectangle 103 1318 177 1338 -fill white -width 0
.c create text 140 1328 -text "go!NORTH"
.c create line 140 1338 220 1338 -fill darkred -tags mesg -width 2
.c create line 220 1338 300 1338 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1352 -fill #eef -text "111"
.c create line 140 1352 300 1352 -fill #eef -dash {6 4}
.c create line 300 1320 300 1340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 107 to 111 (Used 1 nobox 1)
# ProcLine[2] stays at 111 (Used 1 nobox 1)
.c create rectangle 263 1342 337 1362 -fill white -width 0
.c create text 300 1352 -text "go?NORTH"
.c create text 70 1376 -fill #eef -text "113"
.c create line 140 1376 300 1376 -fill #eef -dash {6 4}
.c create line 300 1368 300 1364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 111 to 113 (Used 1 nobox 1)
# ProcLine[2] stays at 113 (Used 1 nobox 1)
.c create rectangle 258 1366 342 1386 -fill white -width 0
.c create text 300 1376 -text "go NORTH"
.c create text 70 1400 -fill #eef -text "115"
.c create line 140 1400 300 1400 -fill #eef -dash {6 4}
.c create line 140 1344 140 1388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 109 to 115 (Used 1 nobox 1)
# ProcLine[1] stays at 115 (Used 1 nobox 1)
.c create rectangle 103 1390 177 1410 -fill white -width 0
.c create text 140 1400 -text "go!SOUTH"
.c create line 140 1410 220 1410 -fill darkred -tags mesg -width 2
.c create line 220 1410 300 1410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1424 -fill #eef -text "117"
.c create line 140 1424 300 1424 -fill #eef -dash {6 4}
.c create line 300 1392 300 1412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 113 to 117 (Used 1 nobox 1)
# ProcLine[2] stays at 117 (Used 1 nobox 1)
.c create rectangle 263 1414 337 1434 -fill white -width 0
.c create text 300 1424 -text "go?SOUTH"
.c create text 70 1448 -fill #eef -text "119"
.c create line 140 1448 300 1448 -fill #eef -dash {6 4}
.c create line 300 1440 300 1436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 117 to 119 (Used 1 nobox 1)
# ProcLine[2] stays at 119 (Used 1 nobox 1)
.c create rectangle 258 1438 342 1458 -fill white -width 0
.c create text 300 1448 -text "go SOUTH"
.c create text 70 1472 -fill #eef -text "121"
.c create line 140 1472 300 1472 -fill #eef -dash {6 4}
.c create line 140 1416 140 1460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 115 to 121 (Used 1 nobox 1)
# ProcLine[1] stays at 121 (Used 1 nobox 1)
.c create rectangle 103 1462 177 1482 -fill white -width 0
.c create text 140 1472 -text "go!SOUTH"
.c create line 140 1482 220 1482 -fill darkred -tags mesg -width 2
.c create line 220 1482 300 1482 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1496 -fill #eef -text "123"
.c create line 140 1496 300 1496 -fill #eef -dash {6 4}
.c create line 300 1464 300 1484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 119 to 123 (Used 1 nobox 1)
# ProcLine[2] stays at 123 (Used 1 nobox 1)
.c create rectangle 263 1486 337 1506 -fill white -width 0
.c create text 300 1496 -text "go?SOUTH"
.c create text 70 1520 -fill #eef -text "125"
.c create line 140 1520 300 1520 -fill #eef -dash {6 4}
.c create line 300 1512 300 1508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 123 to 125 (Used 1 nobox 1)
# ProcLine[2] stays at 125 (Used 1 nobox 1)
.c create rectangle 258 1510 342 1530 -fill white -width 0
.c create text 300 1520 -text "go SOUTH"
.c create text 70 1544 -fill #eef -text "127"
.c create line 140 1544 300 1544 -fill #eef -dash {6 4}
.c create line 140 1488 140 1532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 121 to 127 (Used 1 nobox 1)
# ProcLine[1] stays at 127 (Used 1 nobox 1)
.c create rectangle 103 1534 177 1554 -fill white -width 0
.c create text 140 1544 -text "go!NORTH"
.c create line 140 1554 220 1554 -fill darkred -tags mesg -width 2
.c create line 220 1554 300 1554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1568 -fill #eef -text "129"
.c create line 140 1568 300 1568 -fill #eef -dash {6 4}
.c create line 300 1536 300 1556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 125 to 129 (Used 1 nobox 1)
# ProcLine[2] stays at 129 (Used 1 nobox 1)
.c create rectangle 263 1558 337 1578 -fill white -width 0
.c create text 300 1568 -text "go?NORTH"
.c create text 70 1592 -fill #eef -text "131"
.c create line 140 1592 300 1592 -fill #eef -dash {6 4}
.c create line 300 1584 300 1580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 129 to 131 (Used 1 nobox 1)
# ProcLine[2] stays at 131 (Used 1 nobox 1)
.c create rectangle 258 1582 342 1602 -fill white -width 0
.c create text 300 1592 -text "go NORTH"
.c create text 70 1616 -fill #eef -text "133"
.c create line 140 1616 300 1616 -fill #eef -dash {6 4}
.c create line 140 1560 140 1604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 127 to 133 (Used 1 nobox 1)
# ProcLine[1] stays at 133 (Used 1 nobox 1)
.c create rectangle 103 1606 177 1626 -fill white -width 0
.c create text 140 1616 -text "go!NORTH"
.c create line 140 1626 220 1626 -fill darkred -tags mesg -width 2
.c create line 220 1626 300 1626 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1640 -fill #eef -text "135"
.c create line 140 1640 300 1640 -fill #eef -dash {6 4}
.c create line 300 1608 300 1628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 131 to 135 (Used 1 nobox 1)
# ProcLine[2] stays at 135 (Used 1 nobox 1)
.c create rectangle 263 1630 337 1650 -fill white -width 0
.c create text 300 1640 -text "go?NORTH"
.c create text 70 1664 -fill #eef -text "137"
.c create line 140 1664 300 1664 -fill #eef -dash {6 4}
.c create line 300 1656 300 1652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 135 to 137 (Used 1 nobox 1)
# ProcLine[2] stays at 137 (Used 1 nobox 1)
.c create rectangle 258 1654 342 1674 -fill white -width 0
.c create text 300 1664 -text "go NORTH"
.c create text 70 1688 -fill #eef -text "139"
.c create line 140 1688 300 1688 -fill #eef -dash {6 4}
.c create line 140 1632 140 1676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 133 to 139 (Used 1 nobox 1)
# ProcLine[1] stays at 139 (Used 1 nobox 1)
.c create rectangle 103 1678 177 1698 -fill white -width 0
.c create text 140 1688 -text "go!SOUTH"
.c create line 140 1698 220 1698 -fill darkred -tags mesg -width 2
.c create line 220 1698 300 1698 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1712 -fill #eef -text "141"
.c create line 140 1712 300 1712 -fill #eef -dash {6 4}
.c create line 300 1680 300 1700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 137 to 141 (Used 1 nobox 1)
# ProcLine[2] stays at 141 (Used 1 nobox 1)
.c create rectangle 263 1702 337 1722 -fill white -width 0
.c create text 300 1712 -text "go?SOUTH"
.c create text 70 1736 -fill #eef -text "143"
.c create line 140 1736 300 1736 -fill #eef -dash {6 4}
.c create line 300 1728 300 1724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 141 to 143 (Used 1 nobox 1)
# ProcLine[2] stays at 143 (Used 1 nobox 1)
.c create rectangle 258 1726 342 1746 -fill white -width 0
.c create text 300 1736 -text "go SOUTH"
.c create text 70 1760 -fill #eef -text "145"
.c create line 140 1760 300 1760 -fill #eef -dash {6 4}
.c create line 140 1704 140 1748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 139 to 145 (Used 1 nobox 1)
# ProcLine[1] stays at 145 (Used 1 nobox 1)
.c create rectangle 103 1750 177 1770 -fill white -width 0
.c create text 140 1760 -text "go!NORTH"
.c create line 140 1770 220 1770 -fill darkred -tags mesg -width 2
.c create line 220 1770 300 1770 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1784 -fill #eef -text "147"
.c create line 140 1784 300 1784 -fill #eef -dash {6 4}
.c create line 300 1752 300 1772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 143 to 147 (Used 1 nobox 1)
# ProcLine[2] stays at 147 (Used 1 nobox 1)
.c create rectangle 263 1774 337 1794 -fill white -width 0
.c create text 300 1784 -text "go?NORTH"
.c create text 70 1808 -fill #eef -text "149"
.c create line 140 1808 300 1808 -fill #eef -dash {6 4}
.c create line 300 1800 300 1796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 147 to 149 (Used 1 nobox 1)
# ProcLine[2] stays at 149 (Used 1 nobox 1)
.c create rectangle 258 1798 342 1818 -fill white -width 0
.c create text 300 1808 -text "go NORTH"
.c create text 70 1832 -fill #eef -text "151"
.c create line 140 1832 300 1832 -fill #eef -dash {6 4}
.c create line 140 1776 140 1820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 145 to 151 (Used 1 nobox 1)
# ProcLine[1] stays at 151 (Used 1 nobox 1)
.c create rectangle 103 1822 177 1842 -fill white -width 0
.c create text 140 1832 -text "go!SOUTH"
.c create line 140 1842 220 1842 -fill darkred -tags mesg -width 2
.c create line 220 1842 300 1842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1856 -fill #eef -text "153"
.c create line 140 1856 300 1856 -fill #eef -dash {6 4}
.c create line 300 1824 300 1844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 149 to 153 (Used 1 nobox 1)
# ProcLine[2] stays at 153 (Used 1 nobox 1)
.c create rectangle 263 1846 337 1866 -fill white -width 0
.c create text 300 1856 -text "go?SOUTH"
.c create text 70 1880 -fill #eef -text "155"
.c create line 140 1880 300 1880 -fill #eef -dash {6 4}
.c create line 300 1872 300 1868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 153 to 155 (Used 1 nobox 1)
# ProcLine[2] stays at 155 (Used 1 nobox 1)
.c create rectangle 258 1870 342 1890 -fill white -width 0
.c create text 300 1880 -text "go SOUTH"
.c create text 70 1904 -fill #eef -text "157"
.c create line 140 1904 300 1904 -fill #eef -dash {6 4}
.c create line 140 1848 140 1892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 151 to 157 (Used 1 nobox 1)
# ProcLine[1] stays at 157 (Used 1 nobox 1)
.c create rectangle 103 1894 177 1914 -fill white -width 0
.c create text 140 1904 -text "go!NORTH"
.c create line 140 1914 220 1914 -fill darkred -tags mesg -width 2
.c create line 220 1914 300 1914 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1928 -fill #eef -text "159"
.c create line 140 1928 300 1928 -fill #eef -dash {6 4}
.c create line 300 1896 300 1916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 155 to 159 (Used 1 nobox 1)
# ProcLine[2] stays at 159 (Used 1 nobox 1)
.c create rectangle 263 1918 337 1938 -fill white -width 0
.c create text 300 1928 -text "go?NORTH"
.c create text 70 1952 -fill #eef -text "161"
.c create line 140 1952 300 1952 -fill #eef -dash {6 4}
.c create line 300 1944 300 1940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 159 to 161 (Used 1 nobox 1)
# ProcLine[2] stays at 161 (Used 1 nobox 1)
.c create rectangle 258 1942 342 1962 -fill white -width 0
.c create text 300 1952 -text "go NORTH"
.c create text 70 1976 -fill #eef -text "163"
.c create line 140 1976 300 1976 -fill #eef -dash {6 4}
.c create line 140 1920 140 1964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 157 to 163 (Used 1 nobox 1)
# ProcLine[1] stays at 163 (Used 1 nobox 1)
.c create rectangle 103 1966 177 1986 -fill white -width 0
.c create text 140 1976 -text "go!SOUTH"
.c create line 140 1986 220 1986 -fill darkred -tags mesg -width 2
.c create line 220 1986 300 1986 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2000 -fill #eef -text "165"
.c create line 140 2000 300 2000 -fill #eef -dash {6 4}
.c create line 300 1968 300 1988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 161 to 165 (Used 1 nobox 1)
# ProcLine[2] stays at 165 (Used 1 nobox 1)
.c create rectangle 263 1990 337 2010 -fill white -width 0
.c create text 300 2000 -text "go?SOUTH"
.c create text 70 2024 -fill #eef -text "167"
.c create line 140 2024 300 2024 -fill #eef -dash {6 4}
.c create line 300 2016 300 2012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 165 to 167 (Used 1 nobox 1)
# ProcLine[2] stays at 167 (Used 1 nobox 1)
.c create rectangle 258 2014 342 2034 -fill white -width 0
.c create text 300 2024 -text "go SOUTH"
.c create text 70 2048 -fill #eef -text "169"
.c create line 140 2048 300 2048 -fill #eef -dash {6 4}
.c create line 140 1992 140 2036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 163 to 169 (Used 1 nobox 1)
# ProcLine[1] stays at 169 (Used 1 nobox 1)
.c create rectangle 103 2038 177 2058 -fill white -width 0
.c create text 140 2048 -text "go!SOUTH"
.c create line 140 2058 220 2058 -fill darkred -tags mesg -width 2
.c create line 220 2058 300 2058 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2072 -fill #eef -text "171"
.c create line 140 2072 300 2072 -fill #eef -dash {6 4}
.c create line 300 2040 300 2060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 167 to 171 (Used 1 nobox 1)
# ProcLine[2] stays at 171 (Used 1 nobox 1)
.c create rectangle 263 2062 337 2082 -fill white -width 0
.c create text 300 2072 -text "go?SOUTH"
.c create text 70 2096 -fill #eef -text "173"
.c create line 140 2096 300 2096 -fill #eef -dash {6 4}
.c create line 300 2088 300 2084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 171 to 173 (Used 1 nobox 1)
# ProcLine[2] stays at 173 (Used 1 nobox 1)
.c create rectangle 258 2086 342 2106 -fill white -width 0
.c create text 300 2096 -text "go SOUTH"
.c create text 70 2120 -fill #eef -text "175"
.c create line 140 2120 300 2120 -fill #eef -dash {6 4}
.c create line 140 2064 140 2108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 169 to 175 (Used 1 nobox 1)
# ProcLine[1] stays at 175 (Used 1 nobox 1)
.c create rectangle 103 2110 177 2130 -fill white -width 0
.c create text 140 2120 -text "go!NORTH"
.c create line 140 2130 220 2130 -fill darkred -tags mesg -width 2
.c create line 220 2130 300 2130 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2144 -fill #eef -text "177"
.c create line 140 2144 300 2144 -fill #eef -dash {6 4}
.c create line 300 2112 300 2132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 173 to 177 (Used 1 nobox 1)
# ProcLine[2] stays at 177 (Used 1 nobox 1)
.c create rectangle 263 2134 337 2154 -fill white -width 0
.c create text 300 2144 -text "go?NORTH"
.c create text 70 2168 -fill #eef -text "179"
.c create line 140 2168 300 2168 -fill #eef -dash {6 4}
.c create line 300 2160 300 2156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 177 to 179 (Used 1 nobox 1)
# ProcLine[2] stays at 179 (Used 1 nobox 1)
.c create rectangle 258 2158 342 2178 -fill white -width 0
.c create text 300 2168 -text "go NORTH"
.c create text 70 2192 -fill #eef -text "181"
.c create line 140 2192 300 2192 -fill #eef -dash {6 4}
.c create line 140 2136 140 2180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 175 to 181 (Used 1 nobox 1)
# ProcLine[1] stays at 181 (Used 1 nobox 1)
.c create rectangle 103 2182 177 2202 -fill white -width 0
.c create text 140 2192 -text "go!NORTH"
.c create line 140 2202 220 2202 -fill darkred -tags mesg -width 2
.c create line 220 2202 300 2202 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2216 -fill #eef -text "183"
.c create line 140 2216 300 2216 -fill #eef -dash {6 4}
.c create line 300 2184 300 2204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 179 to 183 (Used 1 nobox 1)
# ProcLine[2] stays at 183 (Used 1 nobox 1)
.c create rectangle 263 2206 337 2226 -fill white -width 0
.c create text 300 2216 -text "go?NORTH"
.c create text 70 2240 -fill #eef -text "185"
.c create line 140 2240 300 2240 -fill #eef -dash {6 4}
.c create line 300 2232 300 2228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 183 to 185 (Used 1 nobox 1)
# ProcLine[2] stays at 185 (Used 1 nobox 1)
.c create rectangle 258 2230 342 2250 -fill white -width 0
.c create text 300 2240 -text "go NORTH"
.c create text 70 2264 -fill #eef -text "187"
.c create line 140 2264 300 2264 -fill #eef -dash {6 4}
.c create line 140 2208 140 2252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 181 to 187 (Used 1 nobox 1)
# ProcLine[1] stays at 187 (Used 1 nobox 1)
.c create rectangle 103 2254 177 2274 -fill white -width 0
.c create text 140 2264 -text "go!SOUTH"
.c create line 140 2274 220 2274 -fill darkred -tags mesg -width 2
.c create line 220 2274 300 2274 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2288 -fill #eef -text "189"
.c create line 140 2288 300 2288 -fill #eef -dash {6 4}
.c create line 300 2256 300 2276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 185 to 189 (Used 1 nobox 1)
# ProcLine[2] stays at 189 (Used 1 nobox 1)
.c create rectangle 263 2278 337 2298 -fill white -width 0
.c create text 300 2288 -text "go?SOUTH"
.c create text 70 2312 -fill #eef -text "191"
.c create line 140 2312 300 2312 -fill #eef -dash {6 4}
.c create line 300 2304 300 2300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 189 to 191 (Used 1 nobox 1)
# ProcLine[2] stays at 191 (Used 1 nobox 1)
.c create rectangle 258 2302 342 2322 -fill white -width 0
.c create text 300 2312 -text "go SOUTH"
.c create text 70 2336 -fill #eef -text "193"
.c create line 140 2336 300 2336 -fill #eef -dash {6 4}
.c create line 140 2280 140 2324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 187 to 193 (Used 1 nobox 1)
# ProcLine[1] stays at 193 (Used 1 nobox 1)
.c create rectangle 103 2326 177 2346 -fill white -width 0
.c create text 140 2336 -text "go!NORTH"
.c create line 140 2346 220 2346 -fill darkred -tags mesg -width 2
.c create line 220 2346 300 2346 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2360 -fill #eef -text "195"
.c create line 140 2360 300 2360 -fill #eef -dash {6 4}
.c create line 300 2328 300 2348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 191 to 195 (Used 1 nobox 1)
# ProcLine[2] stays at 195 (Used 1 nobox 1)
.c create rectangle 263 2350 337 2370 -fill white -width 0
.c create text 300 2360 -text "go?NORTH"
.c create text 70 2384 -fill #eef -text "197"
.c create line 140 2384 300 2384 -fill #eef -dash {6 4}
.c create line 300 2376 300 2372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 195 to 197 (Used 1 nobox 1)
# ProcLine[2] stays at 197 (Used 1 nobox 1)
.c create rectangle 258 2374 342 2394 -fill white -width 0
.c create text 300 2384 -text "go NORTH"
.c create text 70 2408 -fill #eef -text "199"
.c create line 140 2408 300 2408 -fill #eef -dash {6 4}
.c create line 140 2352 140 2396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 193 to 199 (Used 1 nobox 1)
# ProcLine[1] stays at 199 (Used 1 nobox 1)
.c create rectangle 103 2398 177 2418 -fill white -width 0
.c create text 140 2408 -text "go!SOUTH"
.c create line 140 2418 220 2418 -fill darkred -tags mesg -width 2
.c create line 220 2418 300 2418 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2432 -fill #eef -text "201"
.c create line 140 2432 300 2432 -fill #eef -dash {6 4}
.c create line 300 2400 300 2420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 197 to 201 (Used 1 nobox 1)
# ProcLine[2] stays at 201 (Used 1 nobox 1)
.c create rectangle 263 2422 337 2442 -fill white -width 0
.c create text 300 2432 -text "go?SOUTH"
.c create text 70 2456 -fill #eef -text "203"
.c create line 140 2456 300 2456 -fill #eef -dash {6 4}
.c create line 300 2448 300 2444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 201 to 203 (Used 1 nobox 1)
# ProcLine[2] stays at 203 (Used 1 nobox 1)
.c create rectangle 258 2446 342 2466 -fill white -width 0
.c create text 300 2456 -text "go SOUTH"
.c create text 70 2480 -fill #eef -text "205"
.c create line 140 2480 300 2480 -fill #eef -dash {6 4}
.c create line 140 2424 140 2468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 199 to 205 (Used 1 nobox 1)
# ProcLine[1] stays at 205 (Used 1 nobox 1)
.c create rectangle 103 2470 177 2490 -fill white -width 0
.c create text 140 2480 -text "go!SOUTH"
.c create line 140 2490 220 2490 -fill darkred -tags mesg -width 2
.c create line 220 2490 300 2490 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2504 -fill #eef -text "207"
.c create line 140 2504 300 2504 -fill #eef -dash {6 4}
.c create line 300 2472 300 2492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 203 to 207 (Used 1 nobox 1)
# ProcLine[2] stays at 207 (Used 1 nobox 1)
.c create rectangle 263 2494 337 2514 -fill white -width 0
.c create text 300 2504 -text "go?SOUTH"
.c create text 70 2528 -fill #eef -text "209"
.c create line 140 2528 300 2528 -fill #eef -dash {6 4}
.c create line 300 2520 300 2516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 207 to 209 (Used 1 nobox 1)
# ProcLine[2] stays at 209 (Used 1 nobox 1)
.c create rectangle 258 2518 342 2538 -fill white -width 0
.c create text 300 2528 -text "go SOUTH"
.c create text 70 2552 -fill #eef -text "211"
.c create line 140 2552 300 2552 -fill #eef -dash {6 4}
.c create line 140 2496 140 2540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 205 to 211 (Used 1 nobox 1)
# ProcLine[1] stays at 211 (Used 1 nobox 1)
.c create rectangle 103 2542 177 2562 -fill white -width 0
.c create text 140 2552 -text "go!NORTH"
.c create line 140 2562 220 2562 -fill darkred -tags mesg -width 2
.c create line 220 2562 300 2562 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2576 -fill #eef -text "213"
.c create line 140 2576 300 2576 -fill #eef -dash {6 4}
.c create line 300 2544 300 2564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 209 to 213 (Used 1 nobox 1)
# ProcLine[2] stays at 213 (Used 1 nobox 1)
.c create rectangle 263 2566 337 2586 -fill white -width 0
.c create text 300 2576 -text "go?NORTH"
.c create text 70 2600 -fill #eef -text "215"
.c create line 140 2600 300 2600 -fill #eef -dash {6 4}
.c create line 300 2592 300 2588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 213 to 215 (Used 1 nobox 1)
# ProcLine[2] stays at 215 (Used 1 nobox 1)
.c create rectangle 258 2590 342 2610 -fill white -width 0
.c create text 300 2600 -text "go NORTH"
.c create text 70 2624 -fill #eef -text "217"
.c create line 140 2624 300 2624 -fill #eef -dash {6 4}
.c create line 140 2568 140 2612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 211 to 217 (Used 1 nobox 1)
# ProcLine[1] stays at 217 (Used 1 nobox 1)
.c create rectangle 103 2614 177 2634 -fill white -width 0
.c create text 140 2624 -text "go!NORTH"
.c create line 140 2634 220 2634 -fill darkred -tags mesg -width 2
.c create line 220 2634 300 2634 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2648 -fill #eef -text "219"
.c create line 140 2648 300 2648 -fill #eef -dash {6 4}
.c create line 300 2616 300 2636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 215 to 219 (Used 1 nobox 1)
# ProcLine[2] stays at 219 (Used 1 nobox 1)
.c create rectangle 263 2638 337 2658 -fill white -width 0
.c create text 300 2648 -text "go?NORTH"
.c create text 70 2672 -fill #eef -text "221"
.c create line 140 2672 300 2672 -fill #eef -dash {6 4}
.c create line 300 2664 300 2660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 219 to 221 (Used 1 nobox 1)
# ProcLine[2] stays at 221 (Used 1 nobox 1)
.c create rectangle 258 2662 342 2682 -fill white -width 0
.c create text 300 2672 -text "go NORTH"
.c create text 70 2696 -fill #eef -text "223"
.c create line 140 2696 300 2696 -fill #eef -dash {6 4}
.c create line 140 2640 140 2684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 217 to 223 (Used 1 nobox 1)
# ProcLine[1] stays at 223 (Used 1 nobox 1)
.c create rectangle 103 2686 177 2706 -fill white -width 0
.c create text 140 2696 -text "go!SOUTH"
.c create line 140 2706 220 2706 -fill darkred -tags mesg -width 2
.c create line 220 2706 300 2706 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2720 -fill #eef -text "225"
.c create line 140 2720 300 2720 -fill #eef -dash {6 4}
.c create line 300 2688 300 2708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 221 to 225 (Used 1 nobox 1)
# ProcLine[2] stays at 225 (Used 1 nobox 1)
.c create rectangle 263 2710 337 2730 -fill white -width 0
.c create text 300 2720 -text "go?SOUTH"
.c create text 70 2744 -fill #eef -text "227"
.c create line 140 2744 300 2744 -fill #eef -dash {6 4}
.c create line 300 2736 300 2732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 225 to 227 (Used 1 nobox 1)
# ProcLine[2] stays at 227 (Used 1 nobox 1)
.c create rectangle 258 2734 342 2754 -fill white -width 0
.c create text 300 2744 -text "go SOUTH"
.c create text 70 2768 -fill #eef -text "229"
.c create line 140 2768 300 2768 -fill #eef -dash {6 4}
.c create line 140 2712 140 2756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 223 to 229 (Used 1 nobox 1)
# ProcLine[1] stays at 229 (Used 1 nobox 1)
.c create rectangle 103 2758 177 2778 -fill white -width 0
.c create text 140 2768 -text "go!NORTH"
.c create line 140 2778 220 2778 -fill darkred -tags mesg -width 2
.c create line 220 2778 300 2778 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2792 -fill #eef -text "231"
.c create line 140 2792 300 2792 -fill #eef -dash {6 4}
.c create line 300 2760 300 2780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 227 to 231 (Used 1 nobox 1)
# ProcLine[2] stays at 231 (Used 1 nobox 1)
.c create rectangle 263 2782 337 2802 -fill white -width 0
.c create text 300 2792 -text "go?NORTH"
.c create text 70 2816 -fill #eef -text "233"
.c create line 140 2816 300 2816 -fill #eef -dash {6 4}
.c create line 300 2808 300 2804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 231 to 233 (Used 1 nobox 1)
# ProcLine[2] stays at 233 (Used 1 nobox 1)
.c create rectangle 258 2806 342 2826 -fill white -width 0
.c create text 300 2816 -text "go NORTH"
.c create text 70 2840 -fill #eef -text "235"
.c create line 140 2840 300 2840 -fill #eef -dash {6 4}
.c create line 140 2784 140 2828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 229 to 235 (Used 1 nobox 1)
# ProcLine[1] stays at 235 (Used 1 nobox 1)
.c create rectangle 103 2830 177 2850 -fill white -width 0
.c create text 140 2840 -text "go!SOUTH"
.c create line 140 2850 220 2850 -fill darkred -tags mesg -width 2
.c create line 220 2850 300 2850 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2864 -fill #eef -text "237"
.c create line 140 2864 300 2864 -fill #eef -dash {6 4}
.c create line 300 2832 300 2852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 233 to 237 (Used 1 nobox 1)
# ProcLine[2] stays at 237 (Used 1 nobox 1)
.c create rectangle 263 2854 337 2874 -fill white -width 0
.c create text 300 2864 -text "go?SOUTH"
.c create text 70 2888 -fill #eef -text "239"
.c create line 140 2888 300 2888 -fill #eef -dash {6 4}
.c create line 300 2880 300 2876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 237 to 239 (Used 1 nobox 1)
# ProcLine[2] stays at 239 (Used 1 nobox 1)
.c create rectangle 258 2878 342 2898 -fill white -width 0
.c create text 300 2888 -text "go SOUTH"
.c create text 70 2912 -fill #eef -text "241"
.c create line 140 2912 300 2912 -fill #eef -dash {6 4}
.c create line 140 2856 140 2900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 235 to 241 (Used 1 nobox 1)
# ProcLine[1] stays at 241 (Used 1 nobox 1)
.c create rectangle 103 2902 177 2922 -fill white -width 0
.c create text 140 2912 -text "go!NORTH"
.c create line 140 2922 220 2922 -fill darkred -tags mesg -width 2
.c create line 220 2922 300 2922 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2936 -fill #eef -text "243"
.c create line 140 2936 300 2936 -fill #eef -dash {6 4}
.c create line 300 2904 300 2924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 239 to 243 (Used 1 nobox 1)
# ProcLine[2] stays at 243 (Used 1 nobox 1)
.c create rectangle 263 2926 337 2946 -fill white -width 0
.c create text 300 2936 -text "go?NORTH"
.c create text 70 2960 -fill #eef -text "245"
.c create line 140 2960 300 2960 -fill #eef -dash {6 4}
.c create line 300 2952 300 2948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 243 to 245 (Used 1 nobox 1)
# ProcLine[2] stays at 245 (Used 1 nobox 1)
.c create rectangle 258 2950 342 2970 -fill white -width 0
.c create text 300 2960 -text "go NORTH"
.c create text 70 2984 -fill #eef -text "247"
.c create line 140 2984 300 2984 -fill #eef -dash {6 4}
.c create line 140 2928 140 2972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 241 to 247 (Used 1 nobox 1)
# ProcLine[1] stays at 247 (Used 1 nobox 1)
.c create rectangle 103 2974 177 2994 -fill white -width 0
.c create text 140 2984 -text "go!SOUTH"
.c create line 140 2994 220 2994 -fill darkred -tags mesg -width 2
.c create line 220 2994 300 2994 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3008 -fill #eef -text "249"
.c create line 140 3008 300 3008 -fill #eef -dash {6 4}
.c create line 300 2976 300 2996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 245 to 249 (Used 1 nobox 1)
# ProcLine[2] stays at 249 (Used 1 nobox 1)
.c create rectangle 263 2998 337 3018 -fill white -width 0
.c create text 300 3008 -text "go?SOUTH"
.c create text 70 3032 -fill #eef -text "251"
.c create line 140 3032 300 3032 -fill #eef -dash {6 4}
.c create line 300 3024 300 3020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 249 to 251 (Used 1 nobox 1)
# ProcLine[2] stays at 251 (Used 1 nobox 1)
.c create rectangle 258 3022 342 3042 -fill white -width 0
.c create text 300 3032 -text "go SOUTH"
.c create text 70 3056 -fill #eef -text "253"
.c create line 140 3056 300 3056 -fill #eef -dash {6 4}
.c create line 140 3000 140 3044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 247 to 253 (Used 1 nobox 1)
# ProcLine[1] stays at 253 (Used 1 nobox 1)
.c create rectangle 103 3046 177 3066 -fill white -width 0
.c create text 140 3056 -text "go!NORTH"
.c create line 140 3066 220 3066 -fill darkred -tags mesg -width 2
.c create line 220 3066 300 3066 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3080 -fill #eef -text "255"
.c create line 140 3080 300 3080 -fill #eef -dash {6 4}
.c create line 300 3048 300 3068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 251 to 255 (Used 1 nobox 1)
# ProcLine[2] stays at 255 (Used 1 nobox 1)
.c create rectangle 263 3070 337 3090 -fill white -width 0
.c create text 300 3080 -text "go?NORTH"
.c create text 70 3104 -fill #eef -text "257"
.c create line 140 3104 300 3104 -fill #eef -dash {6 4}
.c create line 300 3096 300 3092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 255 to 257 (Used 1 nobox 1)
# ProcLine[2] stays at 257 (Used 1 nobox 1)
.c create rectangle 258 3094 342 3114 -fill white -width 0
.c create text 300 3104 -text "go NORTH"
.c create text 70 3128 -fill #eef -text "259"
.c create line 140 3128 300 3128 -fill #eef -dash {6 4}
.c create line 140 3072 140 3116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 253 to 259 (Used 1 nobox 1)
# ProcLine[1] stays at 259 (Used 1 nobox 1)
.c create rectangle 103 3118 177 3138 -fill white -width 0
.c create text 140 3128 -text "go!SOUTH"
.c create line 140 3138 220 3138 -fill darkred -tags mesg -width 2
.c create line 220 3138 300 3138 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3152 -fill #eef -text "261"
.c create line 140 3152 300 3152 -fill #eef -dash {6 4}
.c create line 300 3120 300 3140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 257 to 261 (Used 1 nobox 1)
# ProcLine[2] stays at 261 (Used 1 nobox 1)
.c create rectangle 263 3142 337 3162 -fill white -width 0
.c create text 300 3152 -text "go?SOUTH"
.c create text 70 3176 -fill #eef -text "263"
.c create line 140 3176 300 3176 -fill #eef -dash {6 4}
.c create line 300 3168 300 3164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 261 to 263 (Used 1 nobox 1)
# ProcLine[2] stays at 263 (Used 1 nobox 1)
.c create rectangle 258 3166 342 3186 -fill white -width 0
.c create text 300 3176 -text "go SOUTH"
.c create text 70 3200 -fill #eef -text "265"
.c create line 140 3200 300 3200 -fill #eef -dash {6 4}
.c create line 140 3144 140 3188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 259 to 265 (Used 1 nobox 1)
# ProcLine[1] stays at 265 (Used 1 nobox 1)
.c create rectangle 103 3190 177 3210 -fill white -width 0
.c create text 140 3200 -text "go!NORTH"
.c create line 140 3210 220 3210 -fill darkred -tags mesg -width 2
.c create line 220 3210 300 3210 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3224 -fill #eef -text "267"
.c create line 140 3224 300 3224 -fill #eef -dash {6 4}
.c create line 300 3192 300 3212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 263 to 267 (Used 1 nobox 1)
# ProcLine[2] stays at 267 (Used 1 nobox 1)
.c create rectangle 263 3214 337 3234 -fill white -width 0
.c create text 300 3224 -text "go?NORTH"
.c create text 70 3248 -fill #eef -text "269"
.c create line 140 3248 300 3248 -fill #eef -dash {6 4}
.c create line 300 3240 300 3236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 267 to 269 (Used 1 nobox 1)
# ProcLine[2] stays at 269 (Used 1 nobox 1)
.c create rectangle 258 3238 342 3258 -fill white -width 0
.c create text 300 3248 -text "go NORTH"
.c create text 70 3272 -fill #eef -text "271"
.c create line 140 3272 300 3272 -fill #eef -dash {6 4}
.c create line 140 3216 140 3260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 265 to 271 (Used 1 nobox 1)
# ProcLine[1] stays at 271 (Used 1 nobox 1)
.c create rectangle 103 3262 177 3282 -fill white -width 0
.c create text 140 3272 -text "go!SOUTH"
.c create line 140 3282 220 3282 -fill darkred -tags mesg -width 2
.c create line 220 3282 300 3282 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3296 -fill #eef -text "273"
.c create line 140 3296 300 3296 -fill #eef -dash {6 4}
.c create line 300 3264 300 3284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 269 to 273 (Used 1 nobox 1)
# ProcLine[2] stays at 273 (Used 1 nobox 1)
.c create rectangle 263 3286 337 3306 -fill white -width 0
.c create text 300 3296 -text "go?SOUTH"
.c create text 70 3320 -fill #eef -text "275"
.c create line 140 3320 300 3320 -fill #eef -dash {6 4}
.c create line 300 3312 300 3308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 273 to 275 (Used 1 nobox 1)
# ProcLine[2] stays at 275 (Used 1 nobox 1)
.c create rectangle 258 3310 342 3330 -fill white -width 0
.c create text 300 3320 -text "go SOUTH"
.c create text 70 3344 -fill #eef -text "277"
.c create line 140 3344 300 3344 -fill #eef -dash {6 4}
.c create line 140 3288 140 3332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 271 to 277 (Used 1 nobox 1)
# ProcLine[1] stays at 277 (Used 1 nobox 1)
.c create rectangle 103 3334 177 3354 -fill white -width 0
.c create text 140 3344 -text "go!SOUTH"
.c create line 140 3354 220 3354 -fill darkred -tags mesg -width 2
.c create line 220 3354 300 3354 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3368 -fill #eef -text "279"
.c create line 140 3368 300 3368 -fill #eef -dash {6 4}
.c create line 300 3336 300 3356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 275 to 279 (Used 1 nobox 1)
# ProcLine[2] stays at 279 (Used 1 nobox 1)
.c create rectangle 263 3358 337 3378 -fill white -width 0
.c create text 300 3368 -text "go?SOUTH"
.c create text 70 3392 -fill #eef -text "281"
.c create line 140 3392 300 3392 -fill #eef -dash {6 4}
.c create line 300 3384 300 3380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 279 to 281 (Used 1 nobox 1)
# ProcLine[2] stays at 281 (Used 1 nobox 1)
.c create rectangle 258 3382 342 3402 -fill white -width 0
.c create text 300 3392 -text "go SOUTH"
.c create text 70 3416 -fill #eef -text "283"
.c create line 140 3416 300 3416 -fill #eef -dash {6 4}
.c create line 140 3360 140 3404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 277 to 283 (Used 1 nobox 1)
# ProcLine[1] stays at 283 (Used 1 nobox 1)
.c create rectangle 103 3406 177 3426 -fill white -width 0
.c create text 140 3416 -text "go!NORTH"
.c create line 140 3426 220 3426 -fill darkred -tags mesg -width 2
.c create line 220 3426 300 3426 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3440 -fill #eef -text "285"
.c create line 140 3440 300 3440 -fill #eef -dash {6 4}
.c create line 300 3408 300 3428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 281 to 285 (Used 1 nobox 1)
# ProcLine[2] stays at 285 (Used 1 nobox 1)
.c create rectangle 263 3430 337 3450 -fill white -width 0
.c create text 300 3440 -text "go?NORTH"
.c create text 70 3464 -fill #eef -text "287"
.c create line 140 3464 300 3464 -fill #eef -dash {6 4}
.c create line 300 3456 300 3452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 285 to 287 (Used 1 nobox 1)
# ProcLine[2] stays at 287 (Used 1 nobox 1)
.c create rectangle 258 3454 342 3474 -fill white -width 0
.c create text 300 3464 -text "go NORTH"
.c create text 70 3488 -fill #eef -text "289"
.c create line 140 3488 300 3488 -fill #eef -dash {6 4}
.c create line 140 3432 140 3476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 283 to 289 (Used 1 nobox 1)
# ProcLine[1] stays at 289 (Used 1 nobox 1)
.c create rectangle 103 3478 177 3498 -fill white -width 0
.c create text 140 3488 -text "go!SOUTH"
.c create line 140 3498 220 3498 -fill darkred -tags mesg -width 2
.c create line 220 3498 300 3498 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3512 -fill #eef -text "291"
.c create line 140 3512 300 3512 -fill #eef -dash {6 4}
.c create line 300 3480 300 3500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 287 to 291 (Used 1 nobox 1)
# ProcLine[2] stays at 291 (Used 1 nobox 1)
.c create rectangle 263 3502 337 3522 -fill white -width 0
.c create text 300 3512 -text "go?SOUTH"
.c create text 70 3536 -fill #eef -text "293"
.c create line 140 3536 300 3536 -fill #eef -dash {6 4}
.c create line 300 3528 300 3524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 291 to 293 (Used 1 nobox 1)
# ProcLine[2] stays at 293 (Used 1 nobox 1)
.c create rectangle 258 3526 342 3546 -fill white -width 0
.c create text 300 3536 -text "go SOUTH"
.c create text 70 3560 -fill #eef -text "295"
.c create line 140 3560 300 3560 -fill #eef -dash {6 4}
.c create line 140 3504 140 3548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 289 to 295 (Used 1 nobox 1)
# ProcLine[1] stays at 295 (Used 1 nobox 1)
.c create rectangle 103 3550 177 3570 -fill white -width 0
.c create text 140 3560 -text "go!NORTH"
.c create line 140 3570 220 3570 -fill darkred -tags mesg -width 2
.c create line 220 3570 300 3570 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3584 -fill #eef -text "297"
.c create line 140 3584 300 3584 -fill #eef -dash {6 4}
.c create line 300 3552 300 3572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 293 to 297 (Used 1 nobox 1)
# ProcLine[2] stays at 297 (Used 1 nobox 1)
.c create rectangle 263 3574 337 3594 -fill white -width 0
.c create text 300 3584 -text "go?NORTH"
.c create text 70 3608 -fill #eef -text "299"
.c create line 140 3608 300 3608 -fill #eef -dash {6 4}
.c create line 300 3600 300 3596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 297 to 299 (Used 1 nobox 1)
# ProcLine[2] stays at 299 (Used 1 nobox 1)
.c create rectangle 258 3598 342 3618 -fill white -width 0
.c create text 300 3608 -text "go NORTH"
.c create text 70 3632 -fill #eef -text "301"
.c create line 140 3632 300 3632 -fill #eef -dash {6 4}
.c create line 140 3576 140 3620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 295 to 301 (Used 1 nobox 1)
# ProcLine[1] stays at 301 (Used 1 nobox 1)
.c create rectangle 103 3622 177 3642 -fill white -width 0
.c create text 140 3632 -text "go!SOUTH"
.c create line 140 3642 220 3642 -fill darkred -tags mesg -width 2
.c create line 220 3642 300 3642 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3656 -fill #eef -text "303"
.c create line 140 3656 300 3656 -fill #eef -dash {6 4}
.c create line 300 3624 300 3644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 299 to 303 (Used 1 nobox 1)
# ProcLine[2] stays at 303 (Used 1 nobox 1)
.c create rectangle 263 3646 337 3666 -fill white -width 0
.c create text 300 3656 -text "go?SOUTH"
.c create text 70 3680 -fill #eef -text "305"
.c create line 140 3680 300 3680 -fill #eef -dash {6 4}
.c create line 300 3672 300 3668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 303 to 305 (Used 1 nobox 1)
# ProcLine[2] stays at 305 (Used 1 nobox 1)
.c create rectangle 258 3670 342 3690 -fill white -width 0
.c create text 300 3680 -text "go SOUTH"
.c create text 70 3704 -fill #eef -text "307"
.c create line 140 3704 300 3704 -fill #eef -dash {6 4}
.c create line 140 3648 140 3692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 301 to 307 (Used 1 nobox 1)
# ProcLine[1] stays at 307 (Used 1 nobox 1)
.c create rectangle 103 3694 177 3714 -fill white -width 0
.c create text 140 3704 -text "go!NORTH"
.c create line 140 3714 220 3714 -fill darkred -tags mesg -width 2
.c create line 220 3714 300 3714 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3728 -fill #eef -text "309"
.c create line 140 3728 300 3728 -fill #eef -dash {6 4}
.c create line 300 3696 300 3716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 305 to 309 (Used 1 nobox 1)
# ProcLine[2] stays at 309 (Used 1 nobox 1)
.c create rectangle 263 3718 337 3738 -fill white -width 0
.c create text 300 3728 -text "go?NORTH"
.c create text 70 3752 -fill #eef -text "311"
.c create line 140 3752 300 3752 -fill #eef -dash {6 4}
.c create line 300 3744 300 3740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 309 to 311 (Used 1 nobox 1)
# ProcLine[2] stays at 311 (Used 1 nobox 1)
.c create rectangle 258 3742 342 3762 -fill white -width 0
.c create text 300 3752 -text "go NORTH"
.c create text 70 3776 -fill #eef -text "313"
.c create line 140 3776 300 3776 -fill #eef -dash {6 4}
.c create line 140 3720 140 3764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 307 to 313 (Used 1 nobox 1)
# ProcLine[1] stays at 313 (Used 1 nobox 1)
.c create rectangle 103 3766 177 3786 -fill white -width 0
.c create text 140 3776 -text "go!NORTH"
.c create line 140 3786 220 3786 -fill darkred -tags mesg -width 2
.c create line 220 3786 300 3786 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3800 -fill #eef -text "315"
.c create line 140 3800 300 3800 -fill #eef -dash {6 4}
.c create line 300 3768 300 3788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 311 to 315 (Used 1 nobox 1)
# ProcLine[2] stays at 315 (Used 1 nobox 1)
.c create rectangle 263 3790 337 3810 -fill white -width 0
.c create text 300 3800 -text "go?NORTH"
.c create text 70 3824 -fill #eef -text "317"
.c create line 140 3824 300 3824 -fill #eef -dash {6 4}
.c create line 300 3816 300 3812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 315 to 317 (Used 1 nobox 1)
# ProcLine[2] stays at 317 (Used 1 nobox 1)
.c create rectangle 258 3814 342 3834 -fill white -width 0
.c create text 300 3824 -text "go NORTH"
.c create text 70 3848 -fill #eef -text "319"
.c create line 140 3848 300 3848 -fill #eef -dash {6 4}
.c create line 140 3792 140 3836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 313 to 319 (Used 1 nobox 1)
# ProcLine[1] stays at 319 (Used 1 nobox 1)
.c create rectangle 103 3838 177 3858 -fill white -width 0
.c create text 140 3848 -text "go!SOUTH"
.c create line 140 3858 220 3858 -fill darkred -tags mesg -width 2
.c create line 220 3858 300 3858 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3872 -fill #eef -text "321"
.c create line 140 3872 300 3872 -fill #eef -dash {6 4}
.c create line 300 3840 300 3860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 317 to 321 (Used 1 nobox 1)
# ProcLine[2] stays at 321 (Used 1 nobox 1)
.c create rectangle 263 3862 337 3882 -fill white -width 0
.c create text 300 3872 -text "go?SOUTH"
.c create text 70 3896 -fill #eef -text "323"
.c create line 140 3896 300 3896 -fill #eef -dash {6 4}
.c create line 300 3888 300 3884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 321 to 323 (Used 1 nobox 1)
# ProcLine[2] stays at 323 (Used 1 nobox 1)
.c create rectangle 258 3886 342 3906 -fill white -width 0
.c create text 300 3896 -text "go SOUTH"
.c create text 70 3920 -fill #eef -text "325"
.c create line 140 3920 300 3920 -fill #eef -dash {6 4}
.c create line 140 3864 140 3908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 319 to 325 (Used 1 nobox 1)
# ProcLine[1] stays at 325 (Used 1 nobox 1)
.c create rectangle 103 3910 177 3930 -fill white -width 0
.c create text 140 3920 -text "go!NORTH"
.c create line 140 3930 220 3930 -fill darkred -tags mesg -width 2
.c create line 220 3930 300 3930 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3944 -fill #eef -text "327"
.c create line 140 3944 300 3944 -fill #eef -dash {6 4}
.c create line 300 3912 300 3932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 323 to 327 (Used 1 nobox 1)
# ProcLine[2] stays at 327 (Used 1 nobox 1)
.c create rectangle 263 3934 337 3954 -fill white -width 0
.c create text 300 3944 -text "go?NORTH"
.c create text 70 3968 -fill #eef -text "329"
.c create line 140 3968 300 3968 -fill #eef -dash {6 4}
.c create line 300 3960 300 3956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 327 to 329 (Used 1 nobox 1)
# ProcLine[2] stays at 329 (Used 1 nobox 1)
.c create rectangle 258 3958 342 3978 -fill white -width 0
.c create text 300 3968 -text "go NORTH"
.c create text 70 3992 -fill #eef -text "331"
.c create line 140 3992 300 3992 -fill #eef -dash {6 4}
.c create line 140 3936 140 3980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 325 to 331 (Used 1 nobox 1)
# ProcLine[1] stays at 331 (Used 1 nobox 1)
.c create rectangle 103 3982 177 4002 -fill white -width 0
.c create text 140 3992 -text "go!SOUTH"
.c create line 140 4002 220 4002 -fill darkred -tags mesg -width 2
.c create line 220 4002 300 4002 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4016 -fill #eef -text "333"
.c create line 140 4016 300 4016 -fill #eef -dash {6 4}
.c create line 300 3984 300 4004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 329 to 333 (Used 1 nobox 1)
# ProcLine[2] stays at 333 (Used 1 nobox 1)
.c create rectangle 263 4006 337 4026 -fill white -width 0
.c create text 300 4016 -text "go?SOUTH"
.c create text 70 4040 -fill #eef -text "335"
.c create line 140 4040 300 4040 -fill #eef -dash {6 4}
.c create line 300 4032 300 4028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 333 to 335 (Used 1 nobox 1)
# ProcLine[2] stays at 335 (Used 1 nobox 1)
.c create rectangle 258 4030 342 4050 -fill white -width 0
.c create text 300 4040 -text "go SOUTH"
.c create text 70 4064 -fill #eef -text "337"
.c create line 140 4064 300 4064 -fill #eef -dash {6 4}
.c create line 140 4008 140 4052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 331 to 337 (Used 1 nobox 1)
# ProcLine[1] stays at 337 (Used 1 nobox 1)
.c create rectangle 103 4054 177 4074 -fill white -width 0
.c create text 140 4064 -text "go!NORTH"
.c create line 140 4074 220 4074 -fill darkred -tags mesg -width 2
.c create line 220 4074 300 4074 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4088 -fill #eef -text "339"
.c create line 140 4088 300 4088 -fill #eef -dash {6 4}
.c create line 300 4056 300 4076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 335 to 339 (Used 1 nobox 1)
# ProcLine[2] stays at 339 (Used 1 nobox 1)
.c create rectangle 263 4078 337 4098 -fill white -width 0
.c create text 300 4088 -text "go?NORTH"
.c create text 70 4112 -fill #eef -text "341"
.c create line 140 4112 300 4112 -fill #eef -dash {6 4}
.c create line 300 4104 300 4100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 339 to 341 (Used 1 nobox 1)
# ProcLine[2] stays at 341 (Used 1 nobox 1)
.c create rectangle 258 4102 342 4122 -fill white -width 0
.c create text 300 4112 -text "go NORTH"
.c create text 70 4136 -fill #eef -text "343"
.c create line 140 4136 300 4136 -fill #eef -dash {6 4}
.c create line 140 4080 140 4124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 337 to 343 (Used 1 nobox 1)
# ProcLine[1] stays at 343 (Used 1 nobox 1)
.c create rectangle 103 4126 177 4146 -fill white -width 0
.c create text 140 4136 -text "go!SOUTH"
.c create line 140 4146 220 4146 -fill darkred -tags mesg -width 2
.c create line 220 4146 300 4146 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4160 -fill #eef -text "345"
.c create line 140 4160 300 4160 -fill #eef -dash {6 4}
.c create line 300 4128 300 4148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 341 to 345 (Used 1 nobox 1)
# ProcLine[2] stays at 345 (Used 1 nobox 1)
.c create rectangle 263 4150 337 4170 -fill white -width 0
.c create text 300 4160 -text "go?SOUTH"
.c create text 70 4184 -fill #eef -text "347"
.c create line 140 4184 300 4184 -fill #eef -dash {6 4}
.c create line 300 4176 300 4172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 345 to 347 (Used 1 nobox 1)
# ProcLine[2] stays at 347 (Used 1 nobox 1)
.c create rectangle 258 4174 342 4194 -fill white -width 0
.c create text 300 4184 -text "go SOUTH"
.c create text 70 4208 -fill #eef -text "349"
.c create line 140 4208 300 4208 -fill #eef -dash {6 4}
.c create line 140 4152 140 4196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 343 to 349 (Used 1 nobox 1)
# ProcLine[1] stays at 349 (Used 1 nobox 1)
.c create rectangle 103 4198 177 4218 -fill white -width 0
.c create text 140 4208 -text "go!SOUTH"
.c create line 140 4218 220 4218 -fill darkred -tags mesg -width 2
.c create line 220 4218 300 4218 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4232 -fill #eef -text "351"
.c create line 140 4232 300 4232 -fill #eef -dash {6 4}
.c create line 300 4200 300 4220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 347 to 351 (Used 1 nobox 1)
# ProcLine[2] stays at 351 (Used 1 nobox 1)
.c create rectangle 263 4222 337 4242 -fill white -width 0
.c create text 300 4232 -text "go?SOUTH"
.c create text 70 4256 -fill #eef -text "353"
.c create line 140 4256 300 4256 -fill #eef -dash {6 4}
.c create line 300 4248 300 4244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 351 to 353 (Used 1 nobox 1)
# ProcLine[2] stays at 353 (Used 1 nobox 1)
.c create rectangle 258 4246 342 4266 -fill white -width 0
.c create text 300 4256 -text "go SOUTH"
.c create text 70 4280 -fill #eef -text "355"
.c create line 140 4280 300 4280 -fill #eef -dash {6 4}
.c create line 140 4224 140 4268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 349 to 355 (Used 1 nobox 1)
# ProcLine[1] stays at 355 (Used 1 nobox 1)
.c create rectangle 103 4270 177 4290 -fill white -width 0
.c create text 140 4280 -text "go!NORTH"
.c create line 140 4290 220 4290 -fill darkred -tags mesg -width 2
.c create line 220 4290 300 4290 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4304 -fill #eef -text "357"
.c create line 140 4304 300 4304 -fill #eef -dash {6 4}
.c create line 300 4272 300 4292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 353 to 357 (Used 1 nobox 1)
# ProcLine[2] stays at 357 (Used 1 nobox 1)
.c create rectangle 263 4294 337 4314 -fill white -width 0
.c create text 300 4304 -text "go?NORTH"
.c create text 70 4328 -fill #eef -text "359"
.c create line 140 4328 300 4328 -fill #eef -dash {6 4}
.c create line 300 4320 300 4316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 357 to 359 (Used 1 nobox 1)
# ProcLine[2] stays at 359 (Used 1 nobox 1)
.c create rectangle 258 4318 342 4338 -fill white -width 0
.c create text 300 4328 -text "go NORTH"
.c create text 70 4352 -fill #eef -text "361"
.c create line 140 4352 300 4352 -fill #eef -dash {6 4}
.c create line 140 4296 140 4340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 355 to 361 (Used 1 nobox 1)
# ProcLine[1] stays at 361 (Used 1 nobox 1)
.c create rectangle 103 4342 177 4362 -fill white -width 0
.c create text 140 4352 -text "go!NORTH"
.c create line 140 4362 220 4362 -fill darkred -tags mesg -width 2
.c create line 220 4362 300 4362 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4376 -fill #eef -text "363"
.c create line 140 4376 300 4376 -fill #eef -dash {6 4}
.c create line 300 4344 300 4364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 359 to 363 (Used 1 nobox 1)
# ProcLine[2] stays at 363 (Used 1 nobox 1)
.c create rectangle 263 4366 337 4386 -fill white -width 0
.c create text 300 4376 -text "go?NORTH"
.c create text 70 4400 -fill #eef -text "365"
.c create line 140 4400 300 4400 -fill #eef -dash {6 4}
.c create line 300 4392 300 4388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 363 to 365 (Used 1 nobox 1)
# ProcLine[2] stays at 365 (Used 1 nobox 1)
.c create rectangle 258 4390 342 4410 -fill white -width 0
.c create text 300 4400 -text "go NORTH"
.c create text 70 4424 -fill #eef -text "367"
.c create line 140 4424 300 4424 -fill #eef -dash {6 4}
.c create line 140 4368 140 4412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 361 to 367 (Used 1 nobox 1)
# ProcLine[1] stays at 367 (Used 1 nobox 1)
.c create rectangle 103 4414 177 4434 -fill white -width 0
.c create text 140 4424 -text "go!SOUTH"
.c create line 140 4434 220 4434 -fill darkred -tags mesg -width 2
.c create line 220 4434 300 4434 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4448 -fill #eef -text "369"
.c create line 140 4448 300 4448 -fill #eef -dash {6 4}
.c create line 300 4416 300 4436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 365 to 369 (Used 1 nobox 1)
# ProcLine[2] stays at 369 (Used 1 nobox 1)
.c create rectangle 263 4438 337 4458 -fill white -width 0
.c create text 300 4448 -text "go?SOUTH"
.c create text 70 4472 -fill #eef -text "371"
.c create line 140 4472 300 4472 -fill #eef -dash {6 4}
.c create line 300 4464 300 4460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 369 to 371 (Used 1 nobox 1)
# ProcLine[2] stays at 371 (Used 1 nobox 1)
.c create rectangle 258 4462 342 4482 -fill white -width 0
.c create text 300 4472 -text "go SOUTH"
.c create text 70 4496 -fill #eef -text "373"
.c create line 140 4496 300 4496 -fill #eef -dash {6 4}
.c create line 140 4440 140 4484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 367 to 373 (Used 1 nobox 1)
# ProcLine[1] stays at 373 (Used 1 nobox 1)
.c create rectangle 103 4486 177 4506 -fill white -width 0
.c create text 140 4496 -text "go!NORTH"
.c create line 140 4506 220 4506 -fill darkred -tags mesg -width 2
.c create line 220 4506 300 4506 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4520 -fill #eef -text "375"
.c create line 140 4520 300 4520 -fill #eef -dash {6 4}
.c create line 300 4488 300 4508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 371 to 375 (Used 1 nobox 1)
# ProcLine[2] stays at 375 (Used 1 nobox 1)
.c create rectangle 263 4510 337 4530 -fill white -width 0
.c create text 300 4520 -text "go?NORTH"
.c create text 70 4544 -fill #eef -text "377"
.c create line 140 4544 300 4544 -fill #eef -dash {6 4}
.c create line 300 4536 300 4532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 375 to 377 (Used 1 nobox 1)
# ProcLine[2] stays at 377 (Used 1 nobox 1)
.c create rectangle 258 4534 342 4554 -fill white -width 0
.c create text 300 4544 -text "go NORTH"
.c create text 70 4568 -fill #eef -text "379"
.c create line 140 4568 300 4568 -fill #eef -dash {6 4}
.c create line 140 4512 140 4556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 373 to 379 (Used 1 nobox 1)
# ProcLine[1] stays at 379 (Used 1 nobox 1)
.c create rectangle 103 4558 177 4578 -fill white -width 0
.c create text 140 4568 -text "go!SOUTH"
.c create line 140 4578 220 4578 -fill darkred -tags mesg -width 2
.c create line 220 4578 300 4578 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4592 -fill #eef -text "381"
.c create line 140 4592 300 4592 -fill #eef -dash {6 4}
.c create line 300 4560 300 4580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 377 to 381 (Used 1 nobox 1)
# ProcLine[2] stays at 381 (Used 1 nobox 1)
.c create rectangle 263 4582 337 4602 -fill white -width 0
.c create text 300 4592 -text "go?SOUTH"
.c create text 70 4616 -fill #eef -text "383"
.c create line 140 4616 300 4616 -fill #eef -dash {6 4}
.c create line 300 4608 300 4604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 381 to 383 (Used 1 nobox 1)
# ProcLine[2] stays at 383 (Used 1 nobox 1)
.c create rectangle 258 4606 342 4626 -fill white -width 0
.c create text 300 4616 -text "go SOUTH"
.c create text 70 4640 -fill #eef -text "385"
.c create line 140 4640 300 4640 -fill #eef -dash {6 4}
.c create line 140 4584 140 4628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 379 to 385 (Used 1 nobox 1)
# ProcLine[1] stays at 385 (Used 1 nobox 1)
.c create rectangle 103 4630 177 4650 -fill white -width 0
.c create text 140 4640 -text "go!SOUTH"
.c create line 140 4650 220 4650 -fill darkred -tags mesg -width 2
.c create line 220 4650 300 4650 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4664 -fill #eef -text "387"
.c create line 140 4664 300 4664 -fill #eef -dash {6 4}
.c create line 300 4632 300 4652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 383 to 387 (Used 1 nobox 1)
# ProcLine[2] stays at 387 (Used 1 nobox 1)
.c create rectangle 263 4654 337 4674 -fill white -width 0
.c create text 300 4664 -text "go?SOUTH"
.c create text 70 4688 -fill #eef -text "389"
.c create line 140 4688 300 4688 -fill #eef -dash {6 4}
.c create line 300 4680 300 4676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 387 to 389 (Used 1 nobox 1)
# ProcLine[2] stays at 389 (Used 1 nobox 1)
.c create rectangle 258 4678 342 4698 -fill white -width 0
.c create text 300 4688 -text "go SOUTH"
.c create text 70 4712 -fill #eef -text "391"
.c create line 140 4712 300 4712 -fill #eef -dash {6 4}
.c create line 140 4656 140 4700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 385 to 391 (Used 1 nobox 1)
# ProcLine[1] stays at 391 (Used 1 nobox 1)
.c create rectangle 103 4702 177 4722 -fill white -width 0
.c create text 140 4712 -text "go!NORTH"
.c create line 140 4722 220 4722 -fill darkred -tags mesg -width 2
.c create line 220 4722 300 4722 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4736 -fill #eef -text "393"
.c create line 140 4736 300 4736 -fill #eef -dash {6 4}
.c create line 300 4704 300 4724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 389 to 393 (Used 1 nobox 1)
# ProcLine[2] stays at 393 (Used 1 nobox 1)
.c create rectangle 263 4726 337 4746 -fill white -width 0
.c create text 300 4736 -text "go?NORTH"
.c create text 70 4760 -fill #eef -text "395"
.c create line 140 4760 300 4760 -fill #eef -dash {6 4}
.c create line 300 4752 300 4748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 393 to 395 (Used 1 nobox 1)
# ProcLine[2] stays at 395 (Used 1 nobox 1)
.c create rectangle 258 4750 342 4770 -fill white -width 0
.c create text 300 4760 -text "go NORTH"
.c create text 70 4784 -fill #eef -text "397"
.c create line 140 4784 300 4784 -fill #eef -dash {6 4}
.c create line 140 4728 140 4772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 391 to 397 (Used 1 nobox 1)
# ProcLine[1] stays at 397 (Used 1 nobox 1)
.c create rectangle 103 4774 177 4794 -fill white -width 0
.c create text 140 4784 -text "go!NORTH"
.c create line 140 4794 220 4794 -fill darkred -tags mesg -width 2
.c create line 220 4794 300 4794 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4808 -fill #eef -text "399"
.c create line 140 4808 300 4808 -fill #eef -dash {6 4}
.c create line 300 4776 300 4796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 395 to 399 (Used 1 nobox 1)
# ProcLine[2] stays at 399 (Used 1 nobox 1)
.c create rectangle 263 4798 337 4818 -fill white -width 0
.c create text 300 4808 -text "go?NORTH"
.c create text 70 4832 -fill #eef -text "401"
.c create line 140 4832 300 4832 -fill #eef -dash {6 4}
.c create line 300 4824 300 4820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 399 to 401 (Used 1 nobox 1)
# ProcLine[2] stays at 401 (Used 1 nobox 1)
.c create rectangle 258 4822 342 4842 -fill white -width 0
.c create text 300 4832 -text "go NORTH"
.c create text 70 4856 -fill #eef -text "403"
.c create line 140 4856 300 4856 -fill #eef -dash {6 4}
.c create line 140 4800 140 4844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 397 to 403 (Used 1 nobox 1)
# ProcLine[1] stays at 403 (Used 1 nobox 1)
.c create rectangle 103 4846 177 4866 -fill white -width 0
.c create text 140 4856 -text "go!SOUTH"
.c create line 140 4866 220 4866 -fill darkred -tags mesg -width 2
.c create line 220 4866 300 4866 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4880 -fill #eef -text "405"
.c create line 140 4880 300 4880 -fill #eef -dash {6 4}
.c create line 300 4848 300 4868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 401 to 405 (Used 1 nobox 1)
# ProcLine[2] stays at 405 (Used 1 nobox 1)
.c create rectangle 263 4870 337 4890 -fill white -width 0
.c create text 300 4880 -text "go?SOUTH"
.c create text 70 4904 -fill #eef -text "407"
.c create line 140 4904 300 4904 -fill #eef -dash {6 4}
.c create line 300 4896 300 4892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 405 to 407 (Used 1 nobox 1)
# ProcLine[2] stays at 407 (Used 1 nobox 1)
.c create rectangle 258 4894 342 4914 -fill white -width 0
.c create text 300 4904 -text "go SOUTH"
.c create text 70 4928 -fill #eef -text "409"
.c create line 140 4928 300 4928 -fill #eef -dash {6 4}
.c create line 140 4872 140 4916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 403 to 409 (Used 1 nobox 1)
# ProcLine[1] stays at 409 (Used 1 nobox 1)
.c create rectangle 103 4918 177 4938 -fill white -width 0
.c create text 140 4928 -text "go!SOUTH"
.c create line 140 4938 220 4938 -fill darkred -tags mesg -width 2
.c create line 220 4938 300 4938 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4952 -fill #eef -text "411"
.c create line 140 4952 300 4952 -fill #eef -dash {6 4}
.c create line 300 4920 300 4940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 407 to 411 (Used 1 nobox 1)
# ProcLine[2] stays at 411 (Used 1 nobox 1)
.c create rectangle 263 4942 337 4962 -fill white -width 0
.c create text 300 4952 -text "go?SOUTH"
.c create text 70 4976 -fill #eef -text "413"
.c create line 140 4976 300 4976 -fill #eef -dash {6 4}
.c create line 300 4968 300 4964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 411 to 413 (Used 1 nobox 1)
# ProcLine[2] stays at 413 (Used 1 nobox 1)
.c create rectangle 258 4966 342 4986 -fill white -width 0
.c create text 300 4976 -text "go SOUTH"
.c create text 70 5000 -fill #eef -text "415"
.c create line 140 5000 300 5000 -fill #eef -dash {6 4}
.c create line 140 4944 140 4988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 409 to 415 (Used 1 nobox 1)
# ProcLine[1] stays at 415 (Used 1 nobox 1)
.c create rectangle 103 4990 177 5010 -fill white -width 0
.c create text 140 5000 -text "go!NORTH"
.c create line 140 5010 220 5010 -fill darkred -tags mesg -width 2
.c create line 220 5010 300 5010 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5024 -fill #eef -text "417"
.c create line 140 5024 300 5024 -fill #eef -dash {6 4}
.c create line 300 4992 300 5012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 413 to 417 (Used 1 nobox 1)
# ProcLine[2] stays at 417 (Used 1 nobox 1)
.c create rectangle 263 5014 337 5034 -fill white -width 0
.c create text 300 5024 -text "go?NORTH"
.c create text 70 5048 -fill #eef -text "419"
.c create line 140 5048 300 5048 -fill #eef -dash {6 4}
.c create line 300 5040 300 5036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 417 to 419 (Used 1 nobox 1)
# ProcLine[2] stays at 419 (Used 1 nobox 1)
.c create rectangle 258 5038 342 5058 -fill white -width 0
.c create text 300 5048 -text "go NORTH"
.c create text 70 5072 -fill #eef -text "421"
.c create line 140 5072 300 5072 -fill #eef -dash {6 4}
.c create line 140 5016 140 5060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 415 to 421 (Used 1 nobox 1)
# ProcLine[1] stays at 421 (Used 1 nobox 1)
.c create rectangle 103 5062 177 5082 -fill white -width 0
.c create text 140 5072 -text "go!NORTH"
.c create line 140 5082 220 5082 -fill darkred -tags mesg -width 2
.c create line 220 5082 300 5082 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5096 -fill #eef -text "423"
.c create line 140 5096 300 5096 -fill #eef -dash {6 4}
.c create line 300 5064 300 5084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 419 to 423 (Used 1 nobox 1)
# ProcLine[2] stays at 423 (Used 1 nobox 1)
.c create rectangle 263 5086 337 5106 -fill white -width 0
.c create text 300 5096 -text "go?NORTH"
.c create text 70 5120 -fill #eef -text "425"
.c create line 140 5120 300 5120 -fill #eef -dash {6 4}
.c create line 300 5112 300 5108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 423 to 425 (Used 1 nobox 1)
# ProcLine[2] stays at 425 (Used 1 nobox 1)
.c create rectangle 258 5110 342 5130 -fill white -width 0
.c create text 300 5120 -text "go NORTH"
.c create text 70 5144 -fill #eef -text "427"
.c create line 140 5144 300 5144 -fill #eef -dash {6 4}
.c create line 140 5088 140 5132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 421 to 427 (Used 1 nobox 1)
# ProcLine[1] stays at 427 (Used 1 nobox 1)
.c create rectangle 103 5134 177 5154 -fill white -width 0
.c create text 140 5144 -text "go!SOUTH"
.c create line 140 5154 220 5154 -fill darkred -tags mesg -width 2
.c create line 220 5154 300 5154 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5168 -fill #eef -text "429"
.c create line 140 5168 300 5168 -fill #eef -dash {6 4}
.c create line 300 5136 300 5156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 425 to 429 (Used 1 nobox 1)
# ProcLine[2] stays at 429 (Used 1 nobox 1)
.c create rectangle 263 5158 337 5178 -fill white -width 0
.c create text 300 5168 -text "go?SOUTH"
.c create text 70 5192 -fill #eef -text "431"
.c create line 140 5192 300 5192 -fill #eef -dash {6 4}
.c create line 300 5184 300 5180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 429 to 431 (Used 1 nobox 1)
# ProcLine[2] stays at 431 (Used 1 nobox 1)
.c create rectangle 258 5182 342 5202 -fill white -width 0
.c create text 300 5192 -text "go SOUTH"
.c create text 70 5216 -fill #eef -text "433"
.c create line 140 5216 300 5216 -fill #eef -dash {6 4}
.c create line 140 5160 140 5204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 427 to 433 (Used 1 nobox 1)
# ProcLine[1] stays at 433 (Used 1 nobox 1)
.c create rectangle 103 5206 177 5226 -fill white -width 0
.c create text 140 5216 -text "go!SOUTH"
.c create line 140 5226 220 5226 -fill darkred -tags mesg -width 2
.c create line 220 5226 300 5226 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5240 -fill #eef -text "435"
.c create line 140 5240 300 5240 -fill #eef -dash {6 4}
.c create line 300 5208 300 5228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 431 to 435 (Used 1 nobox 1)
# ProcLine[2] stays at 435 (Used 1 nobox 1)
.c create rectangle 263 5230 337 5250 -fill white -width 0
.c create text 300 5240 -text "go?SOUTH"
.c create text 70 5264 -fill #eef -text "437"
.c create line 140 5264 300 5264 -fill #eef -dash {6 4}
.c create line 300 5256 300 5252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 435 to 437 (Used 1 nobox 1)
# ProcLine[2] stays at 437 (Used 1 nobox 1)
.c create rectangle 258 5254 342 5274 -fill white -width 0
.c create text 300 5264 -text "go SOUTH"
.c create text 70 5288 -fill #eef -text "439"
.c create line 140 5288 300 5288 -fill #eef -dash {6 4}
.c create line 140 5232 140 5276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 433 to 439 (Used 1 nobox 1)
# ProcLine[1] stays at 439 (Used 1 nobox 1)
.c create rectangle 103 5278 177 5298 -fill white -width 0
.c create text 140 5288 -text "go!NORTH"
.c create line 140 5298 220 5298 -fill darkred -tags mesg -width 2
.c create line 220 5298 300 5298 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5312 -fill #eef -text "441"
.c create line 140 5312 300 5312 -fill #eef -dash {6 4}
.c create line 300 5280 300 5300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 437 to 441 (Used 1 nobox 1)
# ProcLine[2] stays at 441 (Used 1 nobox 1)
.c create rectangle 263 5302 337 5322 -fill white -width 0
.c create text 300 5312 -text "go?NORTH"
.c create text 70 5336 -fill #eef -text "443"
.c create line 140 5336 300 5336 -fill #eef -dash {6 4}
.c create line 300 5328 300 5324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 441 to 443 (Used 1 nobox 1)
# ProcLine[2] stays at 443 (Used 1 nobox 1)
.c create rectangle 258 5326 342 5346 -fill white -width 0
.c create text 300 5336 -text "go NORTH"
.c create text 70 5360 -fill #eef -text "445"
.c create line 140 5360 300 5360 -fill #eef -dash {6 4}
.c create line 140 5304 140 5348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 439 to 445 (Used 1 nobox 1)
# ProcLine[1] stays at 445 (Used 1 nobox 1)
.c create rectangle 103 5350 177 5370 -fill white -width 0
.c create text 140 5360 -text "go!NORTH"
.c create line 140 5370 220 5370 -fill darkred -tags mesg -width 2
.c create line 220 5370 300 5370 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5384 -fill #eef -text "447"
.c create line 140 5384 300 5384 -fill #eef -dash {6 4}
.c create line 300 5352 300 5372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 443 to 447 (Used 1 nobox 1)
# ProcLine[2] stays at 447 (Used 1 nobox 1)
.c create rectangle 263 5374 337 5394 -fill white -width 0
.c create text 300 5384 -text "go?NORTH"
.c create text 70 5408 -fill #eef -text "449"
.c create line 140 5408 300 5408 -fill #eef -dash {6 4}
.c create line 300 5400 300 5396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 447 to 449 (Used 1 nobox 1)
# ProcLine[2] stays at 449 (Used 1 nobox 1)
.c create rectangle 258 5398 342 5418 -fill white -width 0
.c create text 300 5408 -text "go NORTH"
.c create text 70 5432 -fill #eef -text "451"
.c create line 140 5432 300 5432 -fill #eef -dash {6 4}
.c create line 140 5376 140 5420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 445 to 451 (Used 1 nobox 1)
# ProcLine[1] stays at 451 (Used 1 nobox 1)
.c create rectangle 103 5422 177 5442 -fill white -width 0
.c create text 140 5432 -text "go!SOUTH"
.c create line 140 5442 220 5442 -fill darkred -tags mesg -width 2
.c create line 220 5442 300 5442 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5456 -fill #eef -text "453"
.c create line 140 5456 300 5456 -fill #eef -dash {6 4}
.c create line 300 5424 300 5444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 449 to 453 (Used 1 nobox 1)
# ProcLine[2] stays at 453 (Used 1 nobox 1)
.c create rectangle 263 5446 337 5466 -fill white -width 0
.c create text 300 5456 -text "go?SOUTH"
.c create text 70 5480 -fill #eef -text "455"
.c create line 140 5480 300 5480 -fill #eef -dash {6 4}
.c create line 300 5472 300 5468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 453 to 455 (Used 1 nobox 1)
# ProcLine[2] stays at 455 (Used 1 nobox 1)
.c create rectangle 258 5470 342 5490 -fill white -width 0
.c create text 300 5480 -text "go SOUTH"
.c create text 70 5504 -fill #eef -text "457"
.c create line 140 5504 300 5504 -fill #eef -dash {6 4}
.c create line 140 5448 140 5492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 451 to 457 (Used 1 nobox 1)
# ProcLine[1] stays at 457 (Used 1 nobox 1)
.c create rectangle 103 5494 177 5514 -fill white -width 0
.c create text 140 5504 -text "go!NORTH"
.c create line 140 5514 220 5514 -fill darkred -tags mesg -width 2
.c create line 220 5514 300 5514 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5528 -fill #eef -text "459"
.c create line 140 5528 300 5528 -fill #eef -dash {6 4}
.c create line 300 5496 300 5516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 455 to 459 (Used 1 nobox 1)
# ProcLine[2] stays at 459 (Used 1 nobox 1)
.c create rectangle 263 5518 337 5538 -fill white -width 0
.c create text 300 5528 -text "go?NORTH"
.c create text 70 5552 -fill #eef -text "461"
.c create line 140 5552 300 5552 -fill #eef -dash {6 4}
.c create line 300 5544 300 5540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 459 to 461 (Used 1 nobox 1)
# ProcLine[2] stays at 461 (Used 1 nobox 1)
.c create rectangle 258 5542 342 5562 -fill white -width 0
.c create text 300 5552 -text "go NORTH"
.c create text 70 5576 -fill #eef -text "463"
.c create line 140 5576 300 5576 -fill #eef -dash {6 4}
.c create line 140 5520 140 5564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 457 to 463 (Used 1 nobox 1)
# ProcLine[1] stays at 463 (Used 1 nobox 1)
.c create rectangle 103 5566 177 5586 -fill white -width 0
.c create text 140 5576 -text "go!SOUTH"
.c create line 140 5586 220 5586 -fill darkred -tags mesg -width 2
.c create line 220 5586 300 5586 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5600 -fill #eef -text "465"
.c create line 140 5600 300 5600 -fill #eef -dash {6 4}
.c create line 300 5568 300 5588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 461 to 465 (Used 1 nobox 1)
# ProcLine[2] stays at 465 (Used 1 nobox 1)
.c create rectangle 263 5590 337 5610 -fill white -width 0
.c create text 300 5600 -text "go?SOUTH"
.c create text 70 5624 -fill #eef -text "467"
.c create line 140 5624 300 5624 -fill #eef -dash {6 4}
.c create line 300 5616 300 5612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 465 to 467 (Used 1 nobox 1)
# ProcLine[2] stays at 467 (Used 1 nobox 1)
.c create rectangle 258 5614 342 5634 -fill white -width 0
.c create text 300 5624 -text "go SOUTH"
.c create text 70 5648 -fill #eef -text "469"
.c create line 140 5648 300 5648 -fill #eef -dash {6 4}
.c create line 140 5592 140 5636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 463 to 469 (Used 1 nobox 1)
# ProcLine[1] stays at 469 (Used 1 nobox 1)
.c create rectangle 103 5638 177 5658 -fill white -width 0
.c create text 140 5648 -text "go!NORTH"
.c create line 140 5658 220 5658 -fill darkred -tags mesg -width 2
.c create line 220 5658 300 5658 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5672 -fill #eef -text "471"
.c create line 140 5672 300 5672 -fill #eef -dash {6 4}
.c create line 300 5640 300 5660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 467 to 471 (Used 1 nobox 1)
# ProcLine[2] stays at 471 (Used 1 nobox 1)
.c create rectangle 263 5662 337 5682 -fill white -width 0
.c create text 300 5672 -text "go?NORTH"
.c create text 70 5696 -fill #eef -text "473"
.c create line 140 5696 300 5696 -fill #eef -dash {6 4}
.c create line 300 5688 300 5684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 471 to 473 (Used 1 nobox 1)
# ProcLine[2] stays at 473 (Used 1 nobox 1)
.c create rectangle 258 5686 342 5706 -fill white -width 0
.c create text 300 5696 -text "go NORTH"
.c create text 70 5720 -fill #eef -text "475"
.c create line 140 5720 300 5720 -fill #eef -dash {6 4}
.c create line 140 5664 140 5708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 469 to 475 (Used 1 nobox 1)
# ProcLine[1] stays at 475 (Used 1 nobox 1)
.c create rectangle 103 5710 177 5730 -fill white -width 0
.c create text 140 5720 -text "go!SOUTH"
.c create line 140 5730 220 5730 -fill darkred -tags mesg -width 2
.c create line 220 5730 300 5730 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5744 -fill #eef -text "477"
.c create line 140 5744 300 5744 -fill #eef -dash {6 4}
.c create line 300 5712 300 5732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 473 to 477 (Used 1 nobox 1)
# ProcLine[2] stays at 477 (Used 1 nobox 1)
.c create rectangle 263 5734 337 5754 -fill white -width 0
.c create text 300 5744 -text "go?SOUTH"
.c create text 70 5768 -fill #eef -text "479"
.c create line 140 5768 300 5768 -fill #eef -dash {6 4}
.c create line 300 5760 300 5756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 477 to 479 (Used 1 nobox 1)
# ProcLine[2] stays at 479 (Used 1 nobox 1)
.c create rectangle 258 5758 342 5778 -fill white -width 0
.c create text 300 5768 -text "go SOUTH"
.c create text 70 5792 -fill #eef -text "481"
.c create line 140 5792 300 5792 -fill #eef -dash {6 4}
.c create line 140 5736 140 5780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 475 to 481 (Used 1 nobox 1)
# ProcLine[1] stays at 481 (Used 1 nobox 1)
.c create rectangle 103 5782 177 5802 -fill white -width 0
.c create text 140 5792 -text "go!NORTH"
.c create line 140 5802 220 5802 -fill darkred -tags mesg -width 2
.c create line 220 5802 300 5802 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5816 -fill #eef -text "483"
.c create line 140 5816 300 5816 -fill #eef -dash {6 4}
.c create line 300 5784 300 5804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 479 to 483 (Used 1 nobox 1)
# ProcLine[2] stays at 483 (Used 1 nobox 1)
.c create rectangle 263 5806 337 5826 -fill white -width 0
.c create text 300 5816 -text "go?NORTH"
.c create text 70 5840 -fill #eef -text "485"
.c create line 140 5840 300 5840 -fill #eef -dash {6 4}
.c create line 300 5832 300 5828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 483 to 485 (Used 1 nobox 1)
# ProcLine[2] stays at 485 (Used 1 nobox 1)
.c create rectangle 258 5830 342 5850 -fill white -width 0
.c create text 300 5840 -text "go NORTH"
.c create text 70 5864 -fill #eef -text "487"
.c create line 140 5864 300 5864 -fill #eef -dash {6 4}
.c create line 140 5808 140 5852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 481 to 487 (Used 1 nobox 1)
# ProcLine[1] stays at 487 (Used 1 nobox 1)
.c create rectangle 103 5854 177 5874 -fill white -width 0
.c create text 140 5864 -text "go!SOUTH"
.c create line 140 5874 220 5874 -fill darkred -tags mesg -width 2
.c create line 220 5874 300 5874 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5888 -fill #eef -text "489"
.c create line 140 5888 300 5888 -fill #eef -dash {6 4}
.c create line 300 5856 300 5876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 485 to 489 (Used 1 nobox 1)
# ProcLine[2] stays at 489 (Used 1 nobox 1)
.c create rectangle 263 5878 337 5898 -fill white -width 0
.c create text 300 5888 -text "go?SOUTH"
.c create text 70 5912 -fill #eef -text "491"
.c create line 140 5912 300 5912 -fill #eef -dash {6 4}
.c create line 300 5904 300 5900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 489 to 491 (Used 1 nobox 1)
# ProcLine[2] stays at 491 (Used 1 nobox 1)
.c create rectangle 258 5902 342 5922 -fill white -width 0
.c create text 300 5912 -text "go SOUTH"
.c create text 70 5936 -fill #eef -text "493"
.c create line 140 5936 300 5936 -fill #eef -dash {6 4}
.c create line 140 5880 140 5924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 487 to 493 (Used 1 nobox 1)
# ProcLine[1] stays at 493 (Used 1 nobox 1)
.c create rectangle 103 5926 177 5946 -fill white -width 0
.c create text 140 5936 -text "go!SOUTH"
.c create line 140 5946 220 5946 -fill darkred -tags mesg -width 2
.c create line 220 5946 300 5946 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5960 -fill #eef -text "495"
.c create line 140 5960 300 5960 -fill #eef -dash {6 4}
.c create line 300 5928 300 5948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 491 to 495 (Used 1 nobox 1)
# ProcLine[2] stays at 495 (Used 1 nobox 1)
.c create rectangle 263 5950 337 5970 -fill white -width 0
.c create text 300 5960 -text "go?SOUTH"
.c create text 70 5984 -fill #eef -text "497"
.c create line 140 5984 300 5984 -fill #eef -dash {6 4}
.c create line 300 5976 300 5972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 495 to 497 (Used 1 nobox 1)
# ProcLine[2] stays at 497 (Used 1 nobox 1)
.c create rectangle 258 5974 342 5994 -fill white -width 0
.c create text 300 5984 -text "go SOUTH"
.c create text 70 6008 -fill #eef -text "499"
.c create line 140 6008 300 6008 -fill #eef -dash {6 4}
.c create line 140 5952 140 5996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 493 to 499 (Used 1 nobox 1)
# ProcLine[1] stays at 499 (Used 1 nobox 1)
.c create rectangle 103 5998 177 6018 -fill white -width 0
.c create text 140 6008 -text "go!NORTH"
.c create line 140 6018 220 6018 -fill darkred -tags mesg -width 2
.c create line 220 6018 300 6018 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6032 -fill #eef -text "501"
.c create line 140 6032 300 6032 -fill #eef -dash {6 4}
.c create line 300 6000 300 6020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 497 to 501 (Used 1 nobox 1)
# ProcLine[2] stays at 501 (Used 1 nobox 1)
.c create rectangle 263 6022 337 6042 -fill white -width 0
.c create text 300 6032 -text "go?NORTH"
.c create text 70 6056 -fill #eef -text "503"
.c create line 140 6056 300 6056 -fill #eef -dash {6 4}
.c create line 300 6048 300 6044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 501 to 503 (Used 1 nobox 1)
# ProcLine[2] stays at 503 (Used 1 nobox 1)
.c create rectangle 258 6046 342 6066 -fill white -width 0
.c create text 300 6056 -text "go NORTH"
.c create text 70 6080 -fill #eef -text "505"
.c create line 140 6080 300 6080 -fill #eef -dash {6 4}
.c create line 140 6024 140 6068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 499 to 505 (Used 1 nobox 1)
# ProcLine[1] stays at 505 (Used 1 nobox 1)
.c create rectangle 103 6070 177 6090 -fill white -width 0
.c create text 140 6080 -text "go!SOUTH"
.c create line 140 6090 220 6090 -fill darkred -tags mesg -width 2
.c create line 220 6090 300 6090 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6104 -fill #eef -text "507"
.c create line 140 6104 300 6104 -fill #eef -dash {6 4}
.c create line 300 6072 300 6092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 503 to 507 (Used 1 nobox 1)
# ProcLine[2] stays at 507 (Used 1 nobox 1)
.c create rectangle 263 6094 337 6114 -fill white -width 0
.c create text 300 6104 -text "go?SOUTH"
.c create text 70 6128 -fill #eef -text "509"
.c create line 140 6128 300 6128 -fill #eef -dash {6 4}
.c create line 300 6120 300 6116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 507 to 509 (Used 1 nobox 1)
# ProcLine[2] stays at 509 (Used 1 nobox 1)
.c create rectangle 258 6118 342 6138 -fill white -width 0
.c create text 300 6128 -text "go SOUTH"
.c create text 70 6152 -fill #eef -text "511"
.c create line 140 6152 300 6152 -fill #eef -dash {6 4}
.c create line 140 6096 140 6140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 505 to 511 (Used 1 nobox 1)
# ProcLine[1] stays at 511 (Used 1 nobox 1)
.c create rectangle 103 6142 177 6162 -fill white -width 0
.c create text 140 6152 -text "go!NORTH"
.c create line 140 6162 220 6162 -fill darkred -tags mesg -width 2
.c create line 220 6162 300 6162 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6176 -fill #eef -text "513"
.c create line 140 6176 300 6176 -fill #eef -dash {6 4}
.c create line 300 6144 300 6164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 509 to 513 (Used 1 nobox 1)
# ProcLine[2] stays at 513 (Used 1 nobox 1)
.c create rectangle 263 6166 337 6186 -fill white -width 0
.c create text 300 6176 -text "go?NORTH"
.c create text 70 6200 -fill #eef -text "515"
.c create line 140 6200 300 6200 -fill #eef -dash {6 4}
.c create line 300 6192 300 6188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 513 to 515 (Used 1 nobox 1)
# ProcLine[2] stays at 515 (Used 1 nobox 1)
.c create rectangle 258 6190 342 6210 -fill white -width 0
.c create text 300 6200 -text "go NORTH"
.c create text 70 6224 -fill #eef -text "517"
.c create line 140 6224 300 6224 -fill #eef -dash {6 4}
.c create line 140 6168 140 6212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 511 to 517 (Used 1 nobox 1)
# ProcLine[1] stays at 517 (Used 1 nobox 1)
.c create rectangle 103 6214 177 6234 -fill white -width 0
.c create text 140 6224 -text "go!NORTH"
.c create line 140 6234 220 6234 -fill darkred -tags mesg -width 2
.c create line 220 6234 300 6234 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6248 -fill #eef -text "519"
.c create line 140 6248 300 6248 -fill #eef -dash {6 4}
.c create line 300 6216 300 6236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 515 to 519 (Used 1 nobox 1)
# ProcLine[2] stays at 519 (Used 1 nobox 1)
.c create rectangle 263 6238 337 6258 -fill white -width 0
.c create text 300 6248 -text "go?NORTH"
.c create text 70 6272 -fill #eef -text "521"
.c create line 140 6272 300 6272 -fill #eef -dash {6 4}
.c create line 300 6264 300 6260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 519 to 521 (Used 1 nobox 1)
# ProcLine[2] stays at 521 (Used 1 nobox 1)
.c create rectangle 258 6262 342 6282 -fill white -width 0
.c create text 300 6272 -text "go NORTH"
.c create text 70 6296 -fill #eef -text "523"
.c create line 140 6296 300 6296 -fill #eef -dash {6 4}
.c create line 140 6240 140 6284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 517 to 523 (Used 1 nobox 1)
# ProcLine[1] stays at 523 (Used 1 nobox 1)
.c create rectangle 103 6286 177 6306 -fill white -width 0
.c create text 140 6296 -text "go!SOUTH"
.c create line 140 6306 220 6306 -fill darkred -tags mesg -width 2
.c create line 220 6306 300 6306 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6320 -fill #eef -text "525"
.c create line 140 6320 300 6320 -fill #eef -dash {6 4}
.c create line 300 6288 300 6308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 521 to 525 (Used 1 nobox 1)
# ProcLine[2] stays at 525 (Used 1 nobox 1)
.c create rectangle 263 6310 337 6330 -fill white -width 0
.c create text 300 6320 -text "go?SOUTH"
.c create text 70 6344 -fill #eef -text "527"
.c create line 140 6344 300 6344 -fill #eef -dash {6 4}
.c create line 300 6336 300 6332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 525 to 527 (Used 1 nobox 1)
# ProcLine[2] stays at 527 (Used 1 nobox 1)
.c create rectangle 258 6334 342 6354 -fill white -width 0
.c create text 300 6344 -text "go SOUTH"
.c create text 70 6368 -fill #eef -text "529"
.c create line 140 6368 300 6368 -fill #eef -dash {6 4}
.c create line 140 6312 140 6356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 523 to 529 (Used 1 nobox 1)
# ProcLine[1] stays at 529 (Used 1 nobox 1)
.c create rectangle 103 6358 177 6378 -fill white -width 0
.c create text 140 6368 -text "go!NORTH"
.c create line 140 6378 220 6378 -fill darkred -tags mesg -width 2
.c create line 220 6378 300 6378 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6392 -fill #eef -text "531"
.c create line 140 6392 300 6392 -fill #eef -dash {6 4}
.c create line 300 6360 300 6380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 527 to 531 (Used 1 nobox 1)
# ProcLine[2] stays at 531 (Used 1 nobox 1)
.c create rectangle 263 6382 337 6402 -fill white -width 0
.c create text 300 6392 -text "go?NORTH"
.c create text 70 6416 -fill #eef -text "533"
.c create line 140 6416 300 6416 -fill #eef -dash {6 4}
.c create line 300 6408 300 6404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 531 to 533 (Used 1 nobox 1)
# ProcLine[2] stays at 533 (Used 1 nobox 1)
.c create rectangle 258 6406 342 6426 -fill white -width 0
.c create text 300 6416 -text "go NORTH"
.c create text 70 6440 -fill #eef -text "535"
.c create line 140 6440 300 6440 -fill #eef -dash {6 4}
.c create line 140 6384 140 6428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 529 to 535 (Used 1 nobox 1)
# ProcLine[1] stays at 535 (Used 1 nobox 1)
.c create rectangle 103 6430 177 6450 -fill white -width 0
.c create text 140 6440 -text "go!SOUTH"
.c create line 140 6450 220 6450 -fill darkred -tags mesg -width 2
.c create line 220 6450 300 6450 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6464 -fill #eef -text "537"
.c create line 140 6464 300 6464 -fill #eef -dash {6 4}
.c create line 300 6432 300 6452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 533 to 537 (Used 1 nobox 1)
# ProcLine[2] stays at 537 (Used 1 nobox 1)
.c create rectangle 263 6454 337 6474 -fill white -width 0
.c create text 300 6464 -text "go?SOUTH"
.c create text 70 6488 -fill #eef -text "539"
.c create line 140 6488 300 6488 -fill #eef -dash {6 4}
.c create line 300 6480 300 6476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 537 to 539 (Used 1 nobox 1)
# ProcLine[2] stays at 539 (Used 1 nobox 1)
.c create rectangle 258 6478 342 6498 -fill white -width 0
.c create text 300 6488 -text "go SOUTH"
.c create text 70 6512 -fill #eef -text "541"
.c create line 140 6512 300 6512 -fill #eef -dash {6 4}
.c create line 140 6456 140 6500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 535 to 541 (Used 1 nobox 1)
# ProcLine[1] stays at 541 (Used 1 nobox 1)
.c create rectangle 103 6502 177 6522 -fill white -width 0
.c create text 140 6512 -text "go!NORTH"
.c create line 140 6522 220 6522 -fill darkred -tags mesg -width 2
.c create line 220 6522 300 6522 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6536 -fill #eef -text "543"
.c create line 140 6536 300 6536 -fill #eef -dash {6 4}
.c create line 300 6504 300 6524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 539 to 543 (Used 1 nobox 1)
# ProcLine[2] stays at 543 (Used 1 nobox 1)
.c create rectangle 263 6526 337 6546 -fill white -width 0
.c create text 300 6536 -text "go?NORTH"
.c create text 70 6560 -fill #eef -text "545"
.c create line 140 6560 300 6560 -fill #eef -dash {6 4}
.c create line 300 6552 300 6548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 543 to 545 (Used 1 nobox 1)
# ProcLine[2] stays at 545 (Used 1 nobox 1)
.c create rectangle 258 6550 342 6570 -fill white -width 0
.c create text 300 6560 -text "go NORTH"
.c create text 70 6584 -fill #eef -text "547"
.c create line 140 6584 300 6584 -fill #eef -dash {6 4}
.c create line 140 6528 140 6572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 541 to 547 (Used 1 nobox 1)
# ProcLine[1] stays at 547 (Used 1 nobox 1)
.c create rectangle 103 6574 177 6594 -fill white -width 0
.c create text 140 6584 -text "go!SOUTH"
.c create line 140 6594 220 6594 -fill darkred -tags mesg -width 2
.c create line 220 6594 300 6594 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6608 -fill #eef -text "549"
.c create line 140 6608 300 6608 -fill #eef -dash {6 4}
.c create line 300 6576 300 6596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 545 to 549 (Used 1 nobox 1)
# ProcLine[2] stays at 549 (Used 1 nobox 1)
.c create rectangle 263 6598 337 6618 -fill white -width 0
.c create text 300 6608 -text "go?SOUTH"
.c create text 70 6632 -fill #eef -text "551"
.c create line 140 6632 300 6632 -fill #eef -dash {6 4}
.c create line 300 6624 300 6620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 549 to 551 (Used 1 nobox 1)
# ProcLine[2] stays at 551 (Used 1 nobox 1)
.c create rectangle 258 6622 342 6642 -fill white -width 0
.c create text 300 6632 -text "go SOUTH"
.c create text 70 6656 -fill #eef -text "553"
.c create line 140 6656 300 6656 -fill #eef -dash {6 4}
.c create line 140 6600 140 6644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 547 to 553 (Used 1 nobox 1)
# ProcLine[1] stays at 553 (Used 1 nobox 1)
.c create rectangle 103 6646 177 6666 -fill white -width 0
.c create text 140 6656 -text "go!NORTH"
.c create line 140 6666 220 6666 -fill darkred -tags mesg -width 2
.c create line 220 6666 300 6666 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6680 -fill #eef -text "555"
.c create line 140 6680 300 6680 -fill #eef -dash {6 4}
.c create line 300 6648 300 6668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 551 to 555 (Used 1 nobox 1)
# ProcLine[2] stays at 555 (Used 1 nobox 1)
.c create rectangle 263 6670 337 6690 -fill white -width 0
.c create text 300 6680 -text "go?NORTH"
.c create text 70 6704 -fill #eef -text "557"
.c create line 140 6704 300 6704 -fill #eef -dash {6 4}
.c create line 300 6696 300 6692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 555 to 557 (Used 1 nobox 1)
# ProcLine[2] stays at 557 (Used 1 nobox 1)
.c create rectangle 258 6694 342 6714 -fill white -width 0
.c create text 300 6704 -text "go NORTH"
.c create text 70 6728 -fill #eef -text "559"
.c create line 140 6728 300 6728 -fill #eef -dash {6 4}
.c create line 140 6672 140 6716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 553 to 559 (Used 1 nobox 1)
# ProcLine[1] stays at 559 (Used 1 nobox 1)
.c create rectangle 103 6718 177 6738 -fill white -width 0
.c create text 140 6728 -text "go!SOUTH"
.c create line 140 6738 220 6738 -fill darkred -tags mesg -width 2
.c create line 220 6738 300 6738 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6752 -fill #eef -text "561"
.c create line 140 6752 300 6752 -fill #eef -dash {6 4}
.c create line 300 6720 300 6740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 557 to 561 (Used 1 nobox 1)
# ProcLine[2] stays at 561 (Used 1 nobox 1)
.c create rectangle 263 6742 337 6762 -fill white -width 0
.c create text 300 6752 -text "go?SOUTH"
.c create text 70 6776 -fill #eef -text "563"
.c create line 140 6776 300 6776 -fill #eef -dash {6 4}
.c create line 300 6768 300 6764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 561 to 563 (Used 1 nobox 1)
# ProcLine[2] stays at 563 (Used 1 nobox 1)
.c create rectangle 258 6766 342 6786 -fill white -width 0
.c create text 300 6776 -text "go SOUTH"
.c create text 70 6800 -fill #eef -text "565"
.c create line 140 6800 300 6800 -fill #eef -dash {6 4}
.c create line 140 6744 140 6788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 559 to 565 (Used 1 nobox 1)
# ProcLine[1] stays at 565 (Used 1 nobox 1)
.c create rectangle 103 6790 177 6810 -fill white -width 0
.c create text 140 6800 -text "go!SOUTH"
.c create line 140 6810 220 6810 -fill darkred -tags mesg -width 2
.c create line 220 6810 300 6810 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6824 -fill #eef -text "567"
.c create line 140 6824 300 6824 -fill #eef -dash {6 4}
.c create line 300 6792 300 6812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 563 to 567 (Used 1 nobox 1)
# ProcLine[2] stays at 567 (Used 1 nobox 1)
.c create rectangle 263 6814 337 6834 -fill white -width 0
.c create text 300 6824 -text "go?SOUTH"
.c create text 70 6848 -fill #eef -text "569"
.c create line 140 6848 300 6848 -fill #eef -dash {6 4}
.c create line 300 6840 300 6836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 567 to 569 (Used 1 nobox 1)
# ProcLine[2] stays at 569 (Used 1 nobox 1)
.c create rectangle 258 6838 342 6858 -fill white -width 0
.c create text 300 6848 -text "go SOUTH"
.c create text 70 6872 -fill #eef -text "571"
.c create line 140 6872 300 6872 -fill #eef -dash {6 4}
.c create line 140 6816 140 6860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 565 to 571 (Used 1 nobox 1)
# ProcLine[1] stays at 571 (Used 1 nobox 1)
.c create rectangle 103 6862 177 6882 -fill white -width 0
.c create text 140 6872 -text "go!NORTH"
.c create line 140 6882 220 6882 -fill darkred -tags mesg -width 2
.c create line 220 6882 300 6882 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6896 -fill #eef -text "573"
.c create line 140 6896 300 6896 -fill #eef -dash {6 4}
.c create line 300 6864 300 6884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 569 to 573 (Used 1 nobox 1)
# ProcLine[2] stays at 573 (Used 1 nobox 1)
.c create rectangle 263 6886 337 6906 -fill white -width 0
.c create text 300 6896 -text "go?NORTH"
.c create text 70 6920 -fill #eef -text "575"
.c create line 140 6920 300 6920 -fill #eef -dash {6 4}
.c create line 300 6912 300 6908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 573 to 575 (Used 1 nobox 1)
# ProcLine[2] stays at 575 (Used 1 nobox 1)
.c create rectangle 258 6910 342 6930 -fill white -width 0
.c create text 300 6920 -text "go NORTH"
.c create text 70 6944 -fill #eef -text "577"
.c create line 140 6944 300 6944 -fill #eef -dash {6 4}
.c create line 140 6888 140 6932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 571 to 577 (Used 1 nobox 1)
# ProcLine[1] stays at 577 (Used 1 nobox 1)
.c create rectangle 103 6934 177 6954 -fill white -width 0
.c create text 140 6944 -text "go!SOUTH"
.c create line 140 6954 220 6954 -fill darkred -tags mesg -width 2
.c create line 220 6954 300 6954 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6968 -fill #eef -text "579"
.c create line 140 6968 300 6968 -fill #eef -dash {6 4}
.c create line 300 6936 300 6956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 575 to 579 (Used 1 nobox 1)
# ProcLine[2] stays at 579 (Used 1 nobox 1)
.c create rectangle 263 6958 337 6978 -fill white -width 0
.c create text 300 6968 -text "go?SOUTH"
.c create text 70 6992 -fill #eef -text "581"
.c create line 140 6992 300 6992 -fill #eef -dash {6 4}
.c create line 300 6984 300 6980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 579 to 581 (Used 1 nobox 1)
# ProcLine[2] stays at 581 (Used 1 nobox 1)
.c create rectangle 258 6982 342 7002 -fill white -width 0
.c create text 300 6992 -text "go SOUTH"
.c create text 70 7016 -fill #eef -text "583"
.c create line 140 7016 300 7016 -fill #eef -dash {6 4}
.c create line 140 6960 140 7004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 577 to 583 (Used 1 nobox 1)
# ProcLine[1] stays at 583 (Used 1 nobox 1)
.c create rectangle 103 7006 177 7026 -fill white -width 0
.c create text 140 7016 -text "go!NORTH"
.c create line 140 7026 220 7026 -fill darkred -tags mesg -width 2
.c create line 220 7026 300 7026 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7040 -fill #eef -text "585"
.c create line 140 7040 300 7040 -fill #eef -dash {6 4}
.c create line 300 7008 300 7028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 581 to 585 (Used 1 nobox 1)
# ProcLine[2] stays at 585 (Used 1 nobox 1)
.c create rectangle 263 7030 337 7050 -fill white -width 0
.c create text 300 7040 -text "go?NORTH"
.c create text 70 7064 -fill #eef -text "587"
.c create line 140 7064 300 7064 -fill #eef -dash {6 4}
.c create line 300 7056 300 7052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 585 to 587 (Used 1 nobox 1)
# ProcLine[2] stays at 587 (Used 1 nobox 1)
.c create rectangle 258 7054 342 7074 -fill white -width 0
.c create text 300 7064 -text "go NORTH"
.c create text 70 7088 -fill #eef -text "589"
.c create line 140 7088 300 7088 -fill #eef -dash {6 4}
.c create line 140 7032 140 7076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 583 to 589 (Used 1 nobox 1)
# ProcLine[1] stays at 589 (Used 1 nobox 1)
.c create rectangle 103 7078 177 7098 -fill white -width 0
.c create text 140 7088 -text "go!NORTH"
.c create line 140 7098 220 7098 -fill darkred -tags mesg -width 2
.c create line 220 7098 300 7098 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7112 -fill #eef -text "591"
.c create line 140 7112 300 7112 -fill #eef -dash {6 4}
.c create line 300 7080 300 7100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 587 to 591 (Used 1 nobox 1)
# ProcLine[2] stays at 591 (Used 1 nobox 1)
.c create rectangle 263 7102 337 7122 -fill white -width 0
.c create text 300 7112 -text "go?NORTH"
.c create text 70 7136 -fill #eef -text "593"
.c create line 140 7136 300 7136 -fill #eef -dash {6 4}
.c create line 300 7128 300 7124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 591 to 593 (Used 1 nobox 1)
# ProcLine[2] stays at 593 (Used 1 nobox 1)
.c create rectangle 258 7126 342 7146 -fill white -width 0
.c create text 300 7136 -text "go NORTH"
.c create text 70 7160 -fill #eef -text "595"
.c create line 140 7160 300 7160 -fill #eef -dash {6 4}
.c create line 140 7104 140 7148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 589 to 595 (Used 1 nobox 1)
# ProcLine[1] stays at 595 (Used 1 nobox 1)
.c create rectangle 103 7150 177 7170 -fill white -width 0
.c create text 140 7160 -text "go!SOUTH"
.c create line 140 7170 220 7170 -fill darkred -tags mesg -width 2
.c create line 220 7170 300 7170 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7184 -fill #eef -text "597"
.c create line 140 7184 300 7184 -fill #eef -dash {6 4}
.c create line 300 7152 300 7172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 593 to 597 (Used 1 nobox 1)
# ProcLine[2] stays at 597 (Used 1 nobox 1)
.c create rectangle 263 7174 337 7194 -fill white -width 0
.c create text 300 7184 -text "go?SOUTH"
.c create text 70 7208 -fill #eef -text "599"
.c create line 140 7208 300 7208 -fill #eef -dash {6 4}
.c create line 300 7200 300 7196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 597 to 599 (Used 1 nobox 1)
# ProcLine[2] stays at 599 (Used 1 nobox 1)
.c create rectangle 258 7198 342 7218 -fill white -width 0
.c create text 300 7208 -text "go SOUTH"
.c create text 70 7232 -fill #eef -text "601"
.c create line 140 7232 300 7232 -fill #eef -dash {6 4}
.c create line 140 7176 140 7220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 595 to 601 (Used 1 nobox 1)
# ProcLine[1] stays at 601 (Used 1 nobox 1)
.c create rectangle 103 7222 177 7242 -fill white -width 0
.c create text 140 7232 -text "go!NORTH"
.c create line 140 7242 220 7242 -fill darkred -tags mesg -width 2
.c create line 220 7242 300 7242 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7256 -fill #eef -text "603"
.c create line 140 7256 300 7256 -fill #eef -dash {6 4}
.c create line 300 7224 300 7244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 599 to 603 (Used 1 nobox 1)
# ProcLine[2] stays at 603 (Used 1 nobox 1)
.c create rectangle 263 7246 337 7266 -fill white -width 0
.c create text 300 7256 -text "go?NORTH"
.c create text 70 7280 -fill #eef -text "605"
.c create line 140 7280 300 7280 -fill #eef -dash {6 4}
.c create line 300 7272 300 7268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 603 to 605 (Used 1 nobox 1)
# ProcLine[2] stays at 605 (Used 1 nobox 1)
.c create rectangle 258 7270 342 7290 -fill white -width 0
.c create text 300 7280 -text "go NORTH"
.c create text 70 7304 -fill #eef -text "607"
.c create line 140 7304 300 7304 -fill #eef -dash {6 4}
.c create line 140 7248 140 7292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 601 to 607 (Used 1 nobox 1)
# ProcLine[1] stays at 607 (Used 1 nobox 1)
.c create rectangle 103 7294 177 7314 -fill white -width 0
.c create text 140 7304 -text "go!SOUTH"
.c create line 140 7314 220 7314 -fill darkred -tags mesg -width 2
.c create line 220 7314 300 7314 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7328 -fill #eef -text "609"
.c create line 140 7328 300 7328 -fill #eef -dash {6 4}
.c create line 300 7296 300 7316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 605 to 609 (Used 1 nobox 1)
# ProcLine[2] stays at 609 (Used 1 nobox 1)
.c create rectangle 263 7318 337 7338 -fill white -width 0
.c create text 300 7328 -text "go?SOUTH"
.c create text 70 7352 -fill #eef -text "611"
.c create line 140 7352 300 7352 -fill #eef -dash {6 4}
.c create line 300 7344 300 7340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 609 to 611 (Used 1 nobox 1)
# ProcLine[2] stays at 611 (Used 1 nobox 1)
.c create rectangle 258 7342 342 7362 -fill white -width 0
.c create text 300 7352 -text "go SOUTH"
.c create text 70 7376 -fill #eef -text "613"
.c create line 140 7376 300 7376 -fill #eef -dash {6 4}
.c create line 140 7320 140 7364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 607 to 613 (Used 1 nobox 1)
# ProcLine[1] stays at 613 (Used 1 nobox 1)
.c create rectangle 103 7366 177 7386 -fill white -width 0
.c create text 140 7376 -text "go!NORTH"
.c create line 140 7386 220 7386 -fill darkred -tags mesg -width 2
.c create line 220 7386 300 7386 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7400 -fill #eef -text "615"
.c create line 140 7400 300 7400 -fill #eef -dash {6 4}
.c create line 300 7368 300 7388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 611 to 615 (Used 1 nobox 1)
# ProcLine[2] stays at 615 (Used 1 nobox 1)
.c create rectangle 263 7390 337 7410 -fill white -width 0
.c create text 300 7400 -text "go?NORTH"
.c create text 70 7424 -fill #eef -text "617"
.c create line 140 7424 300 7424 -fill #eef -dash {6 4}
.c create line 300 7416 300 7412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 615 to 617 (Used 1 nobox 1)
# ProcLine[2] stays at 617 (Used 1 nobox 1)
.c create rectangle 258 7414 342 7434 -fill white -width 0
.c create text 300 7424 -text "go NORTH"
.c create text 70 7448 -fill #eef -text "619"
.c create line 140 7448 300 7448 -fill #eef -dash {6 4}
.c create line 140 7392 140 7436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 613 to 619 (Used 1 nobox 1)
# ProcLine[1] stays at 619 (Used 1 nobox 1)
.c create rectangle 103 7438 177 7458 -fill white -width 0
.c create text 140 7448 -text "go!SOUTH"
.c create line 140 7458 220 7458 -fill darkred -tags mesg -width 2
.c create line 220 7458 300 7458 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7472 -fill #eef -text "621"
.c create line 140 7472 300 7472 -fill #eef -dash {6 4}
.c create line 300 7440 300 7460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 617 to 621 (Used 1 nobox 1)
# ProcLine[2] stays at 621 (Used 1 nobox 1)
.c create rectangle 263 7462 337 7482 -fill white -width 0
.c create text 300 7472 -text "go?SOUTH"
.c create text 70 7496 -fill #eef -text "623"
.c create line 140 7496 300 7496 -fill #eef -dash {6 4}
.c create line 300 7488 300 7484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 621 to 623 (Used 1 nobox 1)
# ProcLine[2] stays at 623 (Used 1 nobox 1)
.c create rectangle 258 7486 342 7506 -fill white -width 0
.c create text 300 7496 -text "go SOUTH"
.c create text 70 7520 -fill #eef -text "625"
.c create line 140 7520 300 7520 -fill #eef -dash {6 4}
.c create line 140 7464 140 7508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 619 to 625 (Used 1 nobox 1)
# ProcLine[1] stays at 625 (Used 1 nobox 1)
.c create rectangle 103 7510 177 7530 -fill white -width 0
.c create text 140 7520 -text "go!SOUTH"
.c create line 140 7530 220 7530 -fill darkred -tags mesg -width 2
.c create line 220 7530 300 7530 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7544 -fill #eef -text "627"
.c create line 140 7544 300 7544 -fill #eef -dash {6 4}
.c create line 300 7512 300 7532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 623 to 627 (Used 1 nobox 1)
# ProcLine[2] stays at 627 (Used 1 nobox 1)
.c create rectangle 263 7534 337 7554 -fill white -width 0
.c create text 300 7544 -text "go?SOUTH"
.c create text 70 7568 -fill #eef -text "629"
.c create line 140 7568 300 7568 -fill #eef -dash {6 4}
.c create line 300 7560 300 7556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 627 to 629 (Used 1 nobox 1)
# ProcLine[2] stays at 629 (Used 1 nobox 1)
.c create rectangle 258 7558 342 7578 -fill white -width 0
.c create text 300 7568 -text "go SOUTH"
.c create text 70 7592 -fill #eef -text "631"
.c create line 140 7592 300 7592 -fill #eef -dash {6 4}
.c create line 140 7536 140 7580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 625 to 631 (Used 1 nobox 1)
# ProcLine[1] stays at 631 (Used 1 nobox 1)
.c create rectangle 103 7582 177 7602 -fill white -width 0
.c create text 140 7592 -text "go!SOUTH"
.c create line 140 7602 220 7602 -fill darkred -tags mesg -width 2
.c create line 220 7602 300 7602 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7616 -fill #eef -text "633"
.c create line 140 7616 300 7616 -fill #eef -dash {6 4}
.c create line 300 7584 300 7604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 629 to 633 (Used 1 nobox 1)
# ProcLine[2] stays at 633 (Used 1 nobox 1)
.c create rectangle 263 7606 337 7626 -fill white -width 0
.c create text 300 7616 -text "go?SOUTH"
.c create text 70 7640 -fill #eef -text "635"
.c create line 140 7640 300 7640 -fill #eef -dash {6 4}
.c create line 300 7632 300 7628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 633 to 635 (Used 1 nobox 1)
# ProcLine[2] stays at 635 (Used 1 nobox 1)
.c create rectangle 258 7630 342 7650 -fill white -width 0
.c create text 300 7640 -text "go SOUTH"
.c create text 70 7664 -fill #eef -text "637"
.c create line 140 7664 300 7664 -fill #eef -dash {6 4}
.c create line 140 7608 140 7652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 631 to 637 (Used 1 nobox 1)
# ProcLine[1] stays at 637 (Used 1 nobox 1)
.c create rectangle 103 7654 177 7674 -fill white -width 0
.c create text 140 7664 -text "go!NORTH"
.c create line 140 7674 220 7674 -fill darkred -tags mesg -width 2
.c create line 220 7674 300 7674 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7688 -fill #eef -text "639"
.c create line 140 7688 300 7688 -fill #eef -dash {6 4}
.c create line 300 7656 300 7676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 635 to 639 (Used 1 nobox 1)
# ProcLine[2] stays at 639 (Used 1 nobox 1)
.c create rectangle 263 7678 337 7698 -fill white -width 0
.c create text 300 7688 -text "go?NORTH"
.c create text 70 7712 -fill #eef -text "641"
.c create line 140 7712 300 7712 -fill #eef -dash {6 4}
.c create line 300 7704 300 7700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 639 to 641 (Used 1 nobox 1)
# ProcLine[2] stays at 641 (Used 1 nobox 1)
.c create rectangle 258 7702 342 7722 -fill white -width 0
.c create text 300 7712 -text "go NORTH"
.c create text 70 7736 -fill #eef -text "643"
.c create line 140 7736 300 7736 -fill #eef -dash {6 4}
.c create line 140 7680 140 7724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 637 to 643 (Used 1 nobox 1)
# ProcLine[1] stays at 643 (Used 1 nobox 1)
.c create rectangle 103 7726 177 7746 -fill white -width 0
.c create text 140 7736 -text "go!NORTH"
.c create line 140 7746 220 7746 -fill darkred -tags mesg -width 2
.c create line 220 7746 300 7746 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7760 -fill #eef -text "645"
.c create line 140 7760 300 7760 -fill #eef -dash {6 4}
.c create line 300 7728 300 7748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 641 to 645 (Used 1 nobox 1)
# ProcLine[2] stays at 645 (Used 1 nobox 1)
.c create rectangle 263 7750 337 7770 -fill white -width 0
.c create text 300 7760 -text "go?NORTH"
.c create text 70 7784 -fill #eef -text "647"
.c create line 140 7784 300 7784 -fill #eef -dash {6 4}
.c create line 300 7776 300 7772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 645 to 647 (Used 1 nobox 1)
# ProcLine[2] stays at 647 (Used 1 nobox 1)
.c create rectangle 258 7774 342 7794 -fill white -width 0
.c create text 300 7784 -text "go NORTH"
.c create text 70 7808 -fill #eef -text "649"
.c create line 140 7808 300 7808 -fill #eef -dash {6 4}
.c create line 140 7752 140 7796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 643 to 649 (Used 1 nobox 1)
# ProcLine[1] stays at 649 (Used 1 nobox 1)
.c create rectangle 103 7798 177 7818 -fill white -width 0
.c create text 140 7808 -text "go!NORTH"
.c create line 140 7818 220 7818 -fill darkred -tags mesg -width 2
.c create line 220 7818 300 7818 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7832 -fill #eef -text "651"
.c create line 140 7832 300 7832 -fill #eef -dash {6 4}
.c create line 300 7800 300 7820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 647 to 651 (Used 1 nobox 1)
# ProcLine[2] stays at 651 (Used 1 nobox 1)
.c create rectangle 263 7822 337 7842 -fill white -width 0
.c create text 300 7832 -text "go?NORTH"
.c create text 70 7856 -fill #eef -text "653"
.c create line 140 7856 300 7856 -fill #eef -dash {6 4}
.c create line 300 7848 300 7844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 651 to 653 (Used 1 nobox 1)
# ProcLine[2] stays at 653 (Used 1 nobox 1)
.c create rectangle 258 7846 342 7866 -fill white -width 0
.c create text 300 7856 -text "go NORTH"
.c create text 70 7880 -fill #eef -text "655"
.c create line 140 7880 300 7880 -fill #eef -dash {6 4}
.c create line 140 7824 140 7868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 649 to 655 (Used 1 nobox 1)
# ProcLine[1] stays at 655 (Used 1 nobox 1)
.c create rectangle 103 7870 177 7890 -fill white -width 0
.c create text 140 7880 -text "go!SOUTH"
.c create line 140 7890 220 7890 -fill darkred -tags mesg -width 2
.c create line 220 7890 300 7890 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7904 -fill #eef -text "657"
.c create line 140 7904 300 7904 -fill #eef -dash {6 4}
.c create line 300 7872 300 7892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 653 to 657 (Used 1 nobox 1)
# ProcLine[2] stays at 657 (Used 1 nobox 1)
.c create rectangle 263 7894 337 7914 -fill white -width 0
.c create text 300 7904 -text "go?SOUTH"
.c create text 70 7928 -fill #eef -text "659"
.c create line 140 7928 300 7928 -fill #eef -dash {6 4}
.c create line 300 7920 300 7916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 657 to 659 (Used 1 nobox 1)
# ProcLine[2] stays at 659 (Used 1 nobox 1)
.c create rectangle 258 7918 342 7938 -fill white -width 0
.c create text 300 7928 -text "go SOUTH"
.c create text 70 7952 -fill #eef -text "661"
.c create line 140 7952 300 7952 -fill #eef -dash {6 4}
.c create line 140 7896 140 7940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 655 to 661 (Used 1 nobox 1)
# ProcLine[1] stays at 661 (Used 1 nobox 1)
.c create rectangle 103 7942 177 7962 -fill white -width 0
.c create text 140 7952 -text "go!NORTH"
.c create line 140 7962 220 7962 -fill darkred -tags mesg -width 2
.c create line 220 7962 300 7962 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7976 -fill #eef -text "663"
.c create line 140 7976 300 7976 -fill #eef -dash {6 4}
.c create line 300 7944 300 7964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 659 to 663 (Used 1 nobox 1)
# ProcLine[2] stays at 663 (Used 1 nobox 1)
.c create rectangle 263 7966 337 7986 -fill white -width 0
.c create text 300 7976 -text "go?NORTH"
.c create text 70 8000 -fill #eef -text "665"
.c create line 140 8000 300 8000 -fill #eef -dash {6 4}
.c create line 300 7992 300 7988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 663 to 665 (Used 1 nobox 1)
# ProcLine[2] stays at 665 (Used 1 nobox 1)
.c create rectangle 258 7990 342 8010 -fill white -width 0
.c create text 300 8000 -text "go NORTH"
.c create text 70 8024 -fill #eef -text "667"
.c create line 140 8024 300 8024 -fill #eef -dash {6 4}
.c create line 140 7968 140 8012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 661 to 667 (Used 1 nobox 1)
# ProcLine[1] stays at 667 (Used 1 nobox 1)
.c create rectangle 103 8014 177 8034 -fill white -width 0
.c create text 140 8024 -text "go!SOUTH"
.c create line 140 8034 220 8034 -fill darkred -tags mesg -width 2
.c create line 220 8034 300 8034 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8048 -fill #eef -text "669"
.c create line 140 8048 300 8048 -fill #eef -dash {6 4}
.c create line 300 8016 300 8036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 665 to 669 (Used 1 nobox 1)
# ProcLine[2] stays at 669 (Used 1 nobox 1)
.c create rectangle 263 8038 337 8058 -fill white -width 0
.c create text 300 8048 -text "go?SOUTH"
.c create text 70 8072 -fill #eef -text "671"
.c create line 140 8072 300 8072 -fill #eef -dash {6 4}
.c create line 300 8064 300 8060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 669 to 671 (Used 1 nobox 1)
# ProcLine[2] stays at 671 (Used 1 nobox 1)
.c create rectangle 258 8062 342 8082 -fill white -width 0
.c create text 300 8072 -text "go SOUTH"
.c create text 70 8096 -fill #eef -text "673"
.c create line 140 8096 300 8096 -fill #eef -dash {6 4}
.c create line 140 8040 140 8084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 667 to 673 (Used 1 nobox 1)
# ProcLine[1] stays at 673 (Used 1 nobox 1)
.c create rectangle 103 8086 177 8106 -fill white -width 0
.c create text 140 8096 -text "go!NORTH"
.c create line 140 8106 220 8106 -fill darkred -tags mesg -width 2
.c create line 220 8106 300 8106 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8120 -fill #eef -text "675"
.c create line 140 8120 300 8120 -fill #eef -dash {6 4}
.c create line 300 8088 300 8108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 671 to 675 (Used 1 nobox 1)
# ProcLine[2] stays at 675 (Used 1 nobox 1)
.c create rectangle 263 8110 337 8130 -fill white -width 0
.c create text 300 8120 -text "go?NORTH"
.c create text 70 8144 -fill #eef -text "677"
.c create line 140 8144 300 8144 -fill #eef -dash {6 4}
.c create line 300 8136 300 8132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 675 to 677 (Used 1 nobox 1)
# ProcLine[2] stays at 677 (Used 1 nobox 1)
.c create rectangle 258 8134 342 8154 -fill white -width 0
.c create text 300 8144 -text "go NORTH"
.c create text 70 8168 -fill #eef -text "679"
.c create line 140 8168 300 8168 -fill #eef -dash {6 4}
.c create line 140 8112 140 8156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 673 to 679 (Used 1 nobox 1)
# ProcLine[1] stays at 679 (Used 1 nobox 1)
.c create rectangle 103 8158 177 8178 -fill white -width 0
.c create text 140 8168 -text "go!SOUTH"
.c create line 140 8178 220 8178 -fill darkred -tags mesg -width 2
.c create line 220 8178 300 8178 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8192 -fill #eef -text "681"
.c create line 140 8192 300 8192 -fill #eef -dash {6 4}
.c create line 300 8160 300 8180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 677 to 681 (Used 1 nobox 1)
# ProcLine[2] stays at 681 (Used 1 nobox 1)
.c create rectangle 263 8182 337 8202 -fill white -width 0
.c create text 300 8192 -text "go?SOUTH"
.c create text 70 8216 -fill #eef -text "683"
.c create line 140 8216 300 8216 -fill #eef -dash {6 4}
.c create line 300 8208 300 8204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 681 to 683 (Used 1 nobox 1)
# ProcLine[2] stays at 683 (Used 1 nobox 1)
.c create rectangle 258 8206 342 8226 -fill white -width 0
.c create text 300 8216 -text "go SOUTH"
.c create text 70 8240 -fill #eef -text "685"
.c create line 140 8240 300 8240 -fill #eef -dash {6 4}
.c create line 140 8184 140 8228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 679 to 685 (Used 1 nobox 1)
# ProcLine[1] stays at 685 (Used 1 nobox 1)
.c create rectangle 103 8230 177 8250 -fill white -width 0
.c create text 140 8240 -text "go!NORTH"
.c create line 140 8250 220 8250 -fill darkred -tags mesg -width 2
.c create line 220 8250 300 8250 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8264 -fill #eef -text "687"
.c create line 140 8264 300 8264 -fill #eef -dash {6 4}
.c create line 300 8232 300 8252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 683 to 687 (Used 1 nobox 1)
# ProcLine[2] stays at 687 (Used 1 nobox 1)
.c create rectangle 263 8254 337 8274 -fill white -width 0
.c create text 300 8264 -text "go?NORTH"
.c create text 70 8288 -fill #eef -text "689"
.c create line 140 8288 300 8288 -fill #eef -dash {6 4}
.c create line 300 8280 300 8276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 687 to 689 (Used 1 nobox 1)
# ProcLine[2] stays at 689 (Used 1 nobox 1)
.c create rectangle 258 8278 342 8298 -fill white -width 0
.c create text 300 8288 -text "go NORTH"
.c create text 70 8312 -fill #eef -text "691"
.c create line 140 8312 300 8312 -fill #eef -dash {6 4}
.c create line 140 8256 140 8300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 685 to 691 (Used 1 nobox 1)
# ProcLine[1] stays at 691 (Used 1 nobox 1)
.c create rectangle 103 8302 177 8322 -fill white -width 0
.c create text 140 8312 -text "go!SOUTH"
.c create line 140 8322 220 8322 -fill darkred -tags mesg -width 2
.c create line 220 8322 300 8322 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8336 -fill #eef -text "693"
.c create line 140 8336 300 8336 -fill #eef -dash {6 4}
.c create line 300 8304 300 8324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 689 to 693 (Used 1 nobox 1)
# ProcLine[2] stays at 693 (Used 1 nobox 1)
.c create rectangle 263 8326 337 8346 -fill white -width 0
.c create text 300 8336 -text "go?SOUTH"
.c create text 70 8360 -fill #eef -text "695"
.c create line 140 8360 300 8360 -fill #eef -dash {6 4}
.c create line 300 8352 300 8348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 693 to 695 (Used 1 nobox 1)
# ProcLine[2] stays at 695 (Used 1 nobox 1)
.c create rectangle 258 8350 342 8370 -fill white -width 0
.c create text 300 8360 -text "go SOUTH"
.c create text 70 8384 -fill #eef -text "697"
.c create line 140 8384 300 8384 -fill #eef -dash {6 4}
.c create line 140 8328 140 8372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 691 to 697 (Used 1 nobox 1)
# ProcLine[1] stays at 697 (Used 1 nobox 1)
.c create rectangle 103 8374 177 8394 -fill white -width 0
.c create text 140 8384 -text "go!NORTH"
.c create line 140 8394 220 8394 -fill darkred -tags mesg -width 2
.c create line 220 8394 300 8394 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8408 -fill #eef -text "699"
.c create line 140 8408 300 8408 -fill #eef -dash {6 4}
.c create line 300 8376 300 8396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 695 to 699 (Used 1 nobox 1)
# ProcLine[2] stays at 699 (Used 1 nobox 1)
.c create rectangle 263 8398 337 8418 -fill white -width 0
.c create text 300 8408 -text "go?NORTH"
.c create text 70 8432 -fill #eef -text "701"
.c create line 140 8432 300 8432 -fill #eef -dash {6 4}
.c create line 300 8424 300 8420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 699 to 701 (Used 1 nobox 1)
# ProcLine[2] stays at 701 (Used 1 nobox 1)
.c create rectangle 258 8422 342 8442 -fill white -width 0
.c create text 300 8432 -text "go NORTH"
.c create text 70 8456 -fill #eef -text "703"
.c create line 140 8456 300 8456 -fill #eef -dash {6 4}
.c create line 140 8400 140 8444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 697 to 703 (Used 1 nobox 1)
# ProcLine[1] stays at 703 (Used 1 nobox 1)
.c create rectangle 103 8446 177 8466 -fill white -width 0
.c create text 140 8456 -text "go!SOUTH"
.c create line 140 8466 220 8466 -fill darkred -tags mesg -width 2
.c create line 220 8466 300 8466 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8480 -fill #eef -text "705"
.c create line 140 8480 300 8480 -fill #eef -dash {6 4}
.c create line 300 8448 300 8468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 701 to 705 (Used 1 nobox 1)
# ProcLine[2] stays at 705 (Used 1 nobox 1)
.c create rectangle 263 8470 337 8490 -fill white -width 0
.c create text 300 8480 -text "go?SOUTH"
.c create text 70 8504 -fill #eef -text "707"
.c create line 140 8504 300 8504 -fill #eef -dash {6 4}
.c create line 300 8496 300 8492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 705 to 707 (Used 1 nobox 1)
# ProcLine[2] stays at 707 (Used 1 nobox 1)
.c create rectangle 258 8494 342 8514 -fill white -width 0
.c create text 300 8504 -text "go SOUTH"
.c create text 70 8528 -fill #eef -text "709"
.c create line 140 8528 300 8528 -fill #eef -dash {6 4}
.c create line 140 8472 140 8516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 703 to 709 (Used 1 nobox 1)
# ProcLine[1] stays at 709 (Used 1 nobox 1)
.c create rectangle 103 8518 177 8538 -fill white -width 0
.c create text 140 8528 -text "go!NORTH"
.c create line 140 8538 220 8538 -fill darkred -tags mesg -width 2
.c create line 220 8538 300 8538 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8552 -fill #eef -text "711"
.c create line 140 8552 300 8552 -fill #eef -dash {6 4}
.c create line 300 8520 300 8540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 707 to 711 (Used 1 nobox 1)
# ProcLine[2] stays at 711 (Used 1 nobox 1)
.c create rectangle 263 8542 337 8562 -fill white -width 0
.c create text 300 8552 -text "go?NORTH"
.c create text 70 8576 -fill #eef -text "713"
.c create line 140 8576 300 8576 -fill #eef -dash {6 4}
.c create line 300 8568 300 8564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 711 to 713 (Used 1 nobox 1)
# ProcLine[2] stays at 713 (Used 1 nobox 1)
.c create rectangle 258 8566 342 8586 -fill white -width 0
.c create text 300 8576 -text "go NORTH"
.c create text 70 8600 -fill #eef -text "715"
.c create line 140 8600 300 8600 -fill #eef -dash {6 4}
.c create line 140 8544 140 8588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 709 to 715 (Used 1 nobox 1)
# ProcLine[1] stays at 715 (Used 1 nobox 1)
.c create rectangle 103 8590 177 8610 -fill white -width 0
.c create text 140 8600 -text "go!SOUTH"
.c create line 140 8610 220 8610 -fill darkred -tags mesg -width 2
.c create line 220 8610 300 8610 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8624 -fill #eef -text "717"
.c create line 140 8624 300 8624 -fill #eef -dash {6 4}
.c create line 300 8592 300 8612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 713 to 717 (Used 1 nobox 1)
# ProcLine[2] stays at 717 (Used 1 nobox 1)
.c create rectangle 263 8614 337 8634 -fill white -width 0
.c create text 300 8624 -text "go?SOUTH"
.c create text 70 8648 -fill #eef -text "719"
.c create line 140 8648 300 8648 -fill #eef -dash {6 4}
.c create line 300 8640 300 8636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 717 to 719 (Used 1 nobox 1)
# ProcLine[2] stays at 719 (Used 1 nobox 1)
.c create rectangle 258 8638 342 8658 -fill white -width 0
.c create text 300 8648 -text "go SOUTH"
.c create text 70 8672 -fill #eef -text "721"
.c create line 140 8672 300 8672 -fill #eef -dash {6 4}
.c create line 140 8616 140 8660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 715 to 721 (Used 1 nobox 1)
# ProcLine[1] stays at 721 (Used 1 nobox 1)
.c create rectangle 103 8662 177 8682 -fill white -width 0
.c create text 140 8672 -text "go!NORTH"
.c create line 140 8682 220 8682 -fill darkred -tags mesg -width 2
.c create line 220 8682 300 8682 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8696 -fill #eef -text "723"
.c create line 140 8696 300 8696 -fill #eef -dash {6 4}
.c create line 300 8664 300 8684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 719 to 723 (Used 1 nobox 1)
# ProcLine[2] stays at 723 (Used 1 nobox 1)
.c create rectangle 263 8686 337 8706 -fill white -width 0
.c create text 300 8696 -text "go?NORTH"
.c create text 70 8720 -fill #eef -text "725"
.c create line 140 8720 300 8720 -fill #eef -dash {6 4}
.c create line 300 8712 300 8708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 723 to 725 (Used 1 nobox 1)
# ProcLine[2] stays at 725 (Used 1 nobox 1)
.c create rectangle 258 8710 342 8730 -fill white -width 0
.c create text 300 8720 -text "go NORTH"
.c create text 70 8744 -fill #eef -text "727"
.c create line 140 8744 300 8744 -fill #eef -dash {6 4}
.c create line 140 8688 140 8732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 721 to 727 (Used 1 nobox 1)
# ProcLine[1] stays at 727 (Used 1 nobox 1)
.c create rectangle 103 8734 177 8754 -fill white -width 0
.c create text 140 8744 -text "go!SOUTH"
.c create line 140 8754 220 8754 -fill darkred -tags mesg -width 2
.c create line 220 8754 300 8754 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8768 -fill #eef -text "729"
.c create line 140 8768 300 8768 -fill #eef -dash {6 4}
.c create line 300 8736 300 8756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 725 to 729 (Used 1 nobox 1)
# ProcLine[2] stays at 729 (Used 1 nobox 1)
.c create rectangle 263 8758 337 8778 -fill white -width 0
.c create text 300 8768 -text "go?SOUTH"
.c create text 70 8792 -fill #eef -text "731"
.c create line 140 8792 300 8792 -fill #eef -dash {6 4}
.c create line 300 8784 300 8780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 729 to 731 (Used 1 nobox 1)
# ProcLine[2] stays at 731 (Used 1 nobox 1)
.c create rectangle 258 8782 342 8802 -fill white -width 0
.c create text 300 8792 -text "go SOUTH"
.c create text 70 8816 -fill #eef -text "733"
.c create line 140 8816 300 8816 -fill #eef -dash {6 4}
.c create line 140 8760 140 8804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 727 to 733 (Used 1 nobox 1)
# ProcLine[1] stays at 733 (Used 1 nobox 1)
.c create rectangle 103 8806 177 8826 -fill white -width 0
.c create text 140 8816 -text "go!NORTH"
.c create line 140 8826 220 8826 -fill darkred -tags mesg -width 2
.c create line 220 8826 300 8826 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8840 -fill #eef -text "735"
.c create line 140 8840 300 8840 -fill #eef -dash {6 4}
.c create line 300 8808 300 8828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 731 to 735 (Used 1 nobox 1)
# ProcLine[2] stays at 735 (Used 1 nobox 1)
.c create rectangle 263 8830 337 8850 -fill white -width 0
.c create text 300 8840 -text "go?NORTH"
.c create text 70 8864 -fill #eef -text "737"
.c create line 140 8864 300 8864 -fill #eef -dash {6 4}
.c create line 300 8856 300 8852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 735 to 737 (Used 1 nobox 1)
# ProcLine[2] stays at 737 (Used 1 nobox 1)
.c create rectangle 258 8854 342 8874 -fill white -width 0
.c create text 300 8864 -text "go NORTH"
.c create text 70 8888 -fill #eef -text "739"
.c create line 140 8888 300 8888 -fill #eef -dash {6 4}
.c create line 140 8832 140 8876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 733 to 739 (Used 1 nobox 1)
# ProcLine[1] stays at 739 (Used 1 nobox 1)
.c create rectangle 103 8878 177 8898 -fill white -width 0
.c create text 140 8888 -text "go!SOUTH"
.c create line 140 8898 220 8898 -fill darkred -tags mesg -width 2
.c create line 220 8898 300 8898 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8912 -fill #eef -text "741"
.c create line 140 8912 300 8912 -fill #eef -dash {6 4}
.c create line 300 8880 300 8900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 737 to 741 (Used 1 nobox 1)
# ProcLine[2] stays at 741 (Used 1 nobox 1)
.c create rectangle 263 8902 337 8922 -fill white -width 0
.c create text 300 8912 -text "go?SOUTH"
.c create text 70 8936 -fill #eef -text "743"
.c create line 140 8936 300 8936 -fill #eef -dash {6 4}
.c create line 300 8928 300 8924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 741 to 743 (Used 1 nobox 1)
# ProcLine[2] stays at 743 (Used 1 nobox 1)
.c create rectangle 258 8926 342 8946 -fill white -width 0
.c create text 300 8936 -text "go SOUTH"
.c create text 70 8960 -fill #eef -text "745"
.c create line 140 8960 300 8960 -fill #eef -dash {6 4}
.c create line 140 8904 140 8948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 739 to 745 (Used 1 nobox 1)
# ProcLine[1] stays at 745 (Used 1 nobox 1)
.c create rectangle 103 8950 177 8970 -fill white -width 0
.c create text 140 8960 -text "go!NORTH"
.c create line 140 8970 220 8970 -fill darkred -tags mesg -width 2
.c create line 220 8970 300 8970 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8984 -fill #eef -text "747"
.c create line 140 8984 300 8984 -fill #eef -dash {6 4}
.c create line 300 8952 300 8972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 743 to 747 (Used 1 nobox 1)
# ProcLine[2] stays at 747 (Used 1 nobox 1)
.c create rectangle 263 8974 337 8994 -fill white -width 0
.c create text 300 8984 -text "go?NORTH"
.c create text 70 9008 -fill #eef -text "749"
.c create line 140 9008 300 9008 -fill #eef -dash {6 4}
.c create line 300 9000 300 8996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 747 to 749 (Used 1 nobox 1)
# ProcLine[2] stays at 749 (Used 1 nobox 1)
.c create rectangle 258 8998 342 9018 -fill white -width 0
.c create text 300 9008 -text "go NORTH"
.c create text 70 9032 -fill #eef -text "751"
.c create line 140 9032 300 9032 -fill #eef -dash {6 4}
.c create line 140 8976 140 9020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 745 to 751 (Used 1 nobox 1)
# ProcLine[1] stays at 751 (Used 1 nobox 1)
.c create rectangle 103 9022 177 9042 -fill white -width 0
.c create text 140 9032 -text "go!SOUTH"
.c create line 140 9042 220 9042 -fill darkred -tags mesg -width 2
.c create line 220 9042 300 9042 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9056 -fill #eef -text "753"
.c create line 140 9056 300 9056 -fill #eef -dash {6 4}
.c create line 300 9024 300 9044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 749 to 753 (Used 1 nobox 1)
# ProcLine[2] stays at 753 (Used 1 nobox 1)
.c create rectangle 263 9046 337 9066 -fill white -width 0
.c create text 300 9056 -text "go?SOUTH"
.c create text 70 9080 -fill #eef -text "755"
.c create line 140 9080 300 9080 -fill #eef -dash {6 4}
.c create line 300 9072 300 9068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 753 to 755 (Used 1 nobox 1)
# ProcLine[2] stays at 755 (Used 1 nobox 1)
.c create rectangle 258 9070 342 9090 -fill white -width 0
.c create text 300 9080 -text "go SOUTH"
.c create text 70 9104 -fill #eef -text "757"
.c create line 140 9104 300 9104 -fill #eef -dash {6 4}
.c create line 140 9048 140 9092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 751 to 757 (Used 1 nobox 1)
# ProcLine[1] stays at 757 (Used 1 nobox 1)
.c create rectangle 103 9094 177 9114 -fill white -width 0
.c create text 140 9104 -text "go!NORTH"
.c create line 140 9114 220 9114 -fill darkred -tags mesg -width 2
.c create line 220 9114 300 9114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9128 -fill #eef -text "759"
.c create line 140 9128 300 9128 -fill #eef -dash {6 4}
.c create line 300 9096 300 9116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 755 to 759 (Used 1 nobox 1)
# ProcLine[2] stays at 759 (Used 1 nobox 1)
.c create rectangle 263 9118 337 9138 -fill white -width 0
.c create text 300 9128 -text "go?NORTH"
.c create text 70 9152 -fill #eef -text "761"
.c create line 140 9152 300 9152 -fill #eef -dash {6 4}
.c create line 300 9144 300 9140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 759 to 761 (Used 1 nobox 1)
# ProcLine[2] stays at 761 (Used 1 nobox 1)
.c create rectangle 258 9142 342 9162 -fill white -width 0
.c create text 300 9152 -text "go NORTH"
.c create text 70 9176 -fill #eef -text "763"
.c create line 140 9176 300 9176 -fill #eef -dash {6 4}
.c create line 140 9120 140 9164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 757 to 763 (Used 1 nobox 1)
# ProcLine[1] stays at 763 (Used 1 nobox 1)
.c create rectangle 103 9166 177 9186 -fill white -width 0
.c create text 140 9176 -text "go!SOUTH"
.c create line 140 9186 220 9186 -fill darkred -tags mesg -width 2
.c create line 220 9186 300 9186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9200 -fill #eef -text "765"
.c create line 140 9200 300 9200 -fill #eef -dash {6 4}
.c create line 300 9168 300 9188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 761 to 765 (Used 1 nobox 1)
# ProcLine[2] stays at 765 (Used 1 nobox 1)
.c create rectangle 263 9190 337 9210 -fill white -width 0
.c create text 300 9200 -text "go?SOUTH"
.c create text 70 9224 -fill #eef -text "767"
.c create line 140 9224 300 9224 -fill #eef -dash {6 4}
.c create line 300 9216 300 9212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 765 to 767 (Used 1 nobox 1)
# ProcLine[2] stays at 767 (Used 1 nobox 1)
.c create rectangle 258 9214 342 9234 -fill white -width 0
.c create text 300 9224 -text "go SOUTH"
.c create text 70 9248 -fill #eef -text "769"
.c create line 140 9248 300 9248 -fill #eef -dash {6 4}
.c create line 140 9192 140 9236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 763 to 769 (Used 1 nobox 1)
# ProcLine[1] stays at 769 (Used 1 nobox 1)
.c create rectangle 103 9238 177 9258 -fill white -width 0
.c create text 140 9248 -text "go!SOUTH"
.c create line 140 9258 220 9258 -fill darkred -tags mesg -width 2
.c create line 220 9258 300 9258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9272 -fill #eef -text "771"
.c create line 140 9272 300 9272 -fill #eef -dash {6 4}
.c create line 300 9240 300 9260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 767 to 771 (Used 1 nobox 1)
# ProcLine[2] stays at 771 (Used 1 nobox 1)
.c create rectangle 263 9262 337 9282 -fill white -width 0
.c create text 300 9272 -text "go?SOUTH"
.c create text 70 9296 -fill #eef -text "773"
.c create line 140 9296 300 9296 -fill #eef -dash {6 4}
.c create line 300 9288 300 9284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 771 to 773 (Used 1 nobox 1)
# ProcLine[2] stays at 773 (Used 1 nobox 1)
.c create rectangle 258 9286 342 9306 -fill white -width 0
.c create text 300 9296 -text "go SOUTH"
.c create text 70 9320 -fill #eef -text "775"
.c create line 140 9320 300 9320 -fill #eef -dash {6 4}
.c create line 140 9264 140 9308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 769 to 775 (Used 1 nobox 1)
# ProcLine[1] stays at 775 (Used 1 nobox 1)
.c create rectangle 103 9310 177 9330 -fill white -width 0
.c create text 140 9320 -text "go!NORTH"
.c create line 140 9330 220 9330 -fill darkred -tags mesg -width 2
.c create line 220 9330 300 9330 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9344 -fill #eef -text "777"
.c create line 140 9344 300 9344 -fill #eef -dash {6 4}
.c create line 300 9312 300 9332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 773 to 777 (Used 1 nobox 1)
# ProcLine[2] stays at 777 (Used 1 nobox 1)
.c create rectangle 263 9334 337 9354 -fill white -width 0
.c create text 300 9344 -text "go?NORTH"
.c create text 70 9368 -fill #eef -text "779"
.c create line 140 9368 300 9368 -fill #eef -dash {6 4}
.c create line 300 9360 300 9356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 777 to 779 (Used 1 nobox 1)
# ProcLine[2] stays at 779 (Used 1 nobox 1)
.c create rectangle 258 9358 342 9378 -fill white -width 0
.c create text 300 9368 -text "go NORTH"
.c create text 70 9392 -fill #eef -text "781"
.c create line 140 9392 300 9392 -fill #eef -dash {6 4}
.c create line 140 9336 140 9380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 775 to 781 (Used 1 nobox 1)
# ProcLine[1] stays at 781 (Used 1 nobox 1)
.c create rectangle 103 9382 177 9402 -fill white -width 0
.c create text 140 9392 -text "go!NORTH"
.c create line 140 9402 220 9402 -fill darkred -tags mesg -width 2
.c create line 220 9402 300 9402 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9416 -fill #eef -text "783"
.c create line 140 9416 300 9416 -fill #eef -dash {6 4}
.c create line 300 9384 300 9404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 779 to 783 (Used 1 nobox 1)
# ProcLine[2] stays at 783 (Used 1 nobox 1)
.c create rectangle 263 9406 337 9426 -fill white -width 0
.c create text 300 9416 -text "go?NORTH"
.c create text 70 9440 -fill #eef -text "785"
.c create line 140 9440 300 9440 -fill #eef -dash {6 4}
.c create line 300 9432 300 9428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 783 to 785 (Used 1 nobox 1)
# ProcLine[2] stays at 785 (Used 1 nobox 1)
.c create rectangle 258 9430 342 9450 -fill white -width 0
.c create text 300 9440 -text "go NORTH"
.c create text 70 9464 -fill #eef -text "787"
.c create line 140 9464 300 9464 -fill #eef -dash {6 4}
.c create line 140 9408 140 9452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 781 to 787 (Used 1 nobox 1)
# ProcLine[1] stays at 787 (Used 1 nobox 1)
.c create rectangle 103 9454 177 9474 -fill white -width 0
.c create text 140 9464 -text "go!SOUTH"
.c create line 140 9474 220 9474 -fill darkred -tags mesg -width 2
.c create line 220 9474 300 9474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9488 -fill #eef -text "789"
.c create line 140 9488 300 9488 -fill #eef -dash {6 4}
.c create line 300 9456 300 9476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 785 to 789 (Used 1 nobox 1)
# ProcLine[2] stays at 789 (Used 1 nobox 1)
.c create rectangle 263 9478 337 9498 -fill white -width 0
.c create text 300 9488 -text "go?SOUTH"
.c create text 70 9512 -fill #eef -text "791"
.c create line 140 9512 300 9512 -fill #eef -dash {6 4}
.c create line 300 9504 300 9500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 789 to 791 (Used 1 nobox 1)
# ProcLine[2] stays at 791 (Used 1 nobox 1)
.c create rectangle 258 9502 342 9522 -fill white -width 0
.c create text 300 9512 -text "go SOUTH"
.c create text 70 9536 -fill #eef -text "793"
.c create line 140 9536 300 9536 -fill #eef -dash {6 4}
.c create line 140 9480 140 9524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 787 to 793 (Used 1 nobox 1)
# ProcLine[1] stays at 793 (Used 1 nobox 1)
.c create rectangle 103 9526 177 9546 -fill white -width 0
.c create text 140 9536 -text "go!SOUTH"
.c create line 140 9546 220 9546 -fill darkred -tags mesg -width 2
.c create line 220 9546 300 9546 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9560 -fill #eef -text "795"
.c create line 140 9560 300 9560 -fill #eef -dash {6 4}
.c create line 300 9528 300 9548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 791 to 795 (Used 1 nobox 1)
# ProcLine[2] stays at 795 (Used 1 nobox 1)
.c create rectangle 263 9550 337 9570 -fill white -width 0
.c create text 300 9560 -text "go?SOUTH"
.c create text 70 9584 -fill #eef -text "797"
.c create line 140 9584 300 9584 -fill #eef -dash {6 4}
.c create line 300 9576 300 9572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 795 to 797 (Used 1 nobox 1)
# ProcLine[2] stays at 797 (Used 1 nobox 1)
.c create rectangle 258 9574 342 9594 -fill white -width 0
.c create text 300 9584 -text "go SOUTH"
.c create text 70 9608 -fill #eef -text "799"
.c create line 140 9608 300 9608 -fill #eef -dash {6 4}
.c create line 140 9552 140 9596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 793 to 799 (Used 1 nobox 1)
# ProcLine[1] stays at 799 (Used 1 nobox 1)
.c create rectangle 103 9598 177 9618 -fill white -width 0
.c create text 140 9608 -text "go!NORTH"
.c create line 140 9618 220 9618 -fill darkred -tags mesg -width 2
.c create line 220 9618 300 9618 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9632 -fill #eef -text "801"
.c create line 140 9632 300 9632 -fill #eef -dash {6 4}
.c create line 300 9600 300 9620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 797 to 801 (Used 1 nobox 1)
# ProcLine[2] stays at 801 (Used 1 nobox 1)
.c create rectangle 263 9622 337 9642 -fill white -width 0
.c create text 300 9632 -text "go?NORTH"
.c create text 70 9656 -fill #eef -text "803"
.c create line 140 9656 300 9656 -fill #eef -dash {6 4}
.c create line 300 9648 300 9644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 801 to 803 (Used 1 nobox 1)
# ProcLine[2] stays at 803 (Used 1 nobox 1)
.c create rectangle 258 9646 342 9666 -fill white -width 0
.c create text 300 9656 -text "go NORTH"
.c create text 70 9680 -fill #eef -text "805"
.c create line 140 9680 300 9680 -fill #eef -dash {6 4}
.c create line 140 9624 140 9668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 799 to 805 (Used 1 nobox 1)
# ProcLine[1] stays at 805 (Used 1 nobox 1)
.c create rectangle 103 9670 177 9690 -fill white -width 0
.c create text 140 9680 -text "go!NORTH"
.c create line 140 9690 220 9690 -fill darkred -tags mesg -width 2
.c create line 220 9690 300 9690 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9704 -fill #eef -text "807"
.c create line 140 9704 300 9704 -fill #eef -dash {6 4}
.c create line 300 9672 300 9692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 803 to 807 (Used 1 nobox 1)
# ProcLine[2] stays at 807 (Used 1 nobox 1)
.c create rectangle 263 9694 337 9714 -fill white -width 0
.c create text 300 9704 -text "go?NORTH"
.c create text 70 9728 -fill #eef -text "809"
.c create line 140 9728 300 9728 -fill #eef -dash {6 4}
.c create line 300 9720 300 9716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 807 to 809 (Used 1 nobox 1)
# ProcLine[2] stays at 809 (Used 1 nobox 1)
.c create rectangle 258 9718 342 9738 -fill white -width 0
.c create text 300 9728 -text "go NORTH"
.c create text 70 9752 -fill #eef -text "811"
.c create line 140 9752 300 9752 -fill #eef -dash {6 4}
.c create line 140 9696 140 9740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 805 to 811 (Used 1 nobox 1)
# ProcLine[1] stays at 811 (Used 1 nobox 1)
.c create rectangle 103 9742 177 9762 -fill white -width 0
.c create text 140 9752 -text "go!SOUTH"
.c create line 140 9762 220 9762 -fill darkred -tags mesg -width 2
.c create line 220 9762 300 9762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9776 -fill #eef -text "813"
.c create line 140 9776 300 9776 -fill #eef -dash {6 4}
.c create line 300 9744 300 9764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 809 to 813 (Used 1 nobox 1)
# ProcLine[2] stays at 813 (Used 1 nobox 1)
.c create rectangle 263 9766 337 9786 -fill white -width 0
.c create text 300 9776 -text "go?SOUTH"
.c create text 70 9800 -fill #eef -text "815"
.c create line 140 9800 300 9800 -fill #eef -dash {6 4}
.c create line 300 9792 300 9788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 813 to 815 (Used 1 nobox 1)
# ProcLine[2] stays at 815 (Used 1 nobox 1)
.c create rectangle 258 9790 342 9810 -fill white -width 0
.c create text 300 9800 -text "go SOUTH"
.c create text 70 9824 -fill #eef -text "817"
.c create line 140 9824 300 9824 -fill #eef -dash {6 4}
.c create line 140 9768 140 9812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 811 to 817 (Used 1 nobox 1)
# ProcLine[1] stays at 817 (Used 1 nobox 1)
.c create rectangle 103 9814 177 9834 -fill white -width 0
.c create text 140 9824 -text "go!SOUTH"
.c create line 140 9834 220 9834 -fill darkred -tags mesg -width 2
.c create line 220 9834 300 9834 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9848 -fill #eef -text "819"
.c create line 140 9848 300 9848 -fill #eef -dash {6 4}
.c create line 300 9816 300 9836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 815 to 819 (Used 1 nobox 1)
# ProcLine[2] stays at 819 (Used 1 nobox 1)
.c create rectangle 263 9838 337 9858 -fill white -width 0
.c create text 300 9848 -text "go?SOUTH"
.c create text 70 9872 -fill #eef -text "821"
.c create line 140 9872 300 9872 -fill #eef -dash {6 4}
.c create line 300 9864 300 9860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 819 to 821 (Used 1 nobox 1)
# ProcLine[2] stays at 821 (Used 1 nobox 1)
.c create rectangle 258 9862 342 9882 -fill white -width 0
.c create text 300 9872 -text "go SOUTH"
.c create text 70 9896 -fill #eef -text "823"
.c create line 140 9896 300 9896 -fill #eef -dash {6 4}
.c create line 140 9840 140 9884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 817 to 823 (Used 1 nobox 1)
# ProcLine[1] stays at 823 (Used 1 nobox 1)
.c create rectangle 103 9886 177 9906 -fill white -width 0
.c create text 140 9896 -text "go!NORTH"
.c create line 140 9906 220 9906 -fill darkred -tags mesg -width 2
.c create line 220 9906 300 9906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9920 -fill #eef -text "825"
.c create line 140 9920 300 9920 -fill #eef -dash {6 4}
.c create line 300 9888 300 9908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 821 to 825 (Used 1 nobox 1)
# ProcLine[2] stays at 825 (Used 1 nobox 1)
.c create rectangle 263 9910 337 9930 -fill white -width 0
.c create text 300 9920 -text "go?NORTH"
.c create text 70 9944 -fill #eef -text "827"
.c create line 140 9944 300 9944 -fill #eef -dash {6 4}
.c create line 300 9936 300 9932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 825 to 827 (Used 1 nobox 1)
# ProcLine[2] stays at 827 (Used 1 nobox 1)
.c create rectangle 258 9934 342 9954 -fill white -width 0
.c create text 300 9944 -text "go NORTH"
.c create text 70 9968 -fill #eef -text "829"
.c create line 140 9968 300 9968 -fill #eef -dash {6 4}
.c create line 140 9912 140 9956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 823 to 829 (Used 1 nobox 1)
# ProcLine[1] stays at 829 (Used 1 nobox 1)
.c create rectangle 103 9958 177 9978 -fill white -width 0
.c create text 140 9968 -text "go!SOUTH"
.c create line 140 9978 220 9978 -fill darkred -tags mesg -width 2
.c create line 220 9978 300 9978 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9992 -fill #eef -text "831"
.c create line 140 9992 300 9992 -fill #eef -dash {6 4}
.c create line 300 9960 300 9980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 827 to 831 (Used 1 nobox 1)
# ProcLine[2] stays at 831 (Used 1 nobox 1)
.c create rectangle 263 9982 337 10002 -fill white -width 0
.c create text 300 9992 -text "go?SOUTH"
.c create text 70 10016 -fill #eef -text "833"
.c create line 140 10016 300 10016 -fill #eef -dash {6 4}
.c create line 300 10008 300 10004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 831 to 833 (Used 1 nobox 1)
# ProcLine[2] stays at 833 (Used 1 nobox 1)
.c create rectangle 258 10006 342 10026 -fill white -width 0
.c create text 300 10016 -text "go SOUTH"
.c create text 70 10040 -fill #eef -text "835"
.c create line 140 10040 300 10040 -fill #eef -dash {6 4}
.c create line 140 9984 140 10028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 829 to 835 (Used 1 nobox 1)
# ProcLine[1] stays at 835 (Used 1 nobox 1)
.c create rectangle 103 10030 177 10050 -fill white -width 0
.c create text 140 10040 -text "go!NORTH"
.c create line 140 10050 220 10050 -fill darkred -tags mesg -width 2
.c create line 220 10050 300 10050 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10064 -fill #eef -text "837"
.c create line 140 10064 300 10064 -fill #eef -dash {6 4}
.c create line 300 10032 300 10052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 833 to 837 (Used 1 nobox 1)
# ProcLine[2] stays at 837 (Used 1 nobox 1)
.c create rectangle 263 10054 337 10074 -fill white -width 0
.c create text 300 10064 -text "go?NORTH"
.c create text 70 10088 -fill #eef -text "839"
.c create line 140 10088 300 10088 -fill #eef -dash {6 4}
.c create line 300 10080 300 10076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 837 to 839 (Used 1 nobox 1)
# ProcLine[2] stays at 839 (Used 1 nobox 1)
.c create rectangle 258 10078 342 10098 -fill white -width 0
.c create text 300 10088 -text "go NORTH"
.c create text 70 10112 -fill #eef -text "841"
.c create line 140 10112 300 10112 -fill #eef -dash {6 4}
.c create line 140 10056 140 10100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 835 to 841 (Used 1 nobox 1)
# ProcLine[1] stays at 841 (Used 1 nobox 1)
.c create rectangle 103 10102 177 10122 -fill white -width 0
.c create text 140 10112 -text "go!SOUTH"
.c create line 140 10122 220 10122 -fill darkred -tags mesg -width 2
.c create line 220 10122 300 10122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10136 -fill #eef -text "843"
.c create line 140 10136 300 10136 -fill #eef -dash {6 4}
.c create line 300 10104 300 10124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 839 to 843 (Used 1 nobox 1)
# ProcLine[2] stays at 843 (Used 1 nobox 1)
.c create rectangle 263 10126 337 10146 -fill white -width 0
.c create text 300 10136 -text "go?SOUTH"
.c create text 70 10160 -fill #eef -text "845"
.c create line 140 10160 300 10160 -fill #eef -dash {6 4}
.c create line 300 10152 300 10148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 843 to 845 (Used 1 nobox 1)
# ProcLine[2] stays at 845 (Used 1 nobox 1)
.c create rectangle 258 10150 342 10170 -fill white -width 0
.c create text 300 10160 -text "go SOUTH"
.c create text 70 10184 -fill #eef -text "847"
.c create line 140 10184 300 10184 -fill #eef -dash {6 4}
.c create line 140 10128 140 10172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 841 to 847 (Used 1 nobox 1)
# ProcLine[1] stays at 847 (Used 1 nobox 1)
.c create rectangle 103 10174 177 10194 -fill white -width 0
.c create text 140 10184 -text "go!NORTH"
.c create line 140 10194 220 10194 -fill darkred -tags mesg -width 2
.c create line 220 10194 300 10194 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10208 -fill #eef -text "849"
.c create line 140 10208 300 10208 -fill #eef -dash {6 4}
.c create line 300 10176 300 10196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 845 to 849 (Used 1 nobox 1)
# ProcLine[2] stays at 849 (Used 1 nobox 1)
.c create rectangle 263 10198 337 10218 -fill white -width 0
.c create text 300 10208 -text "go?NORTH"
.c create text 70 10232 -fill #eef -text "851"
.c create line 140 10232 300 10232 -fill #eef -dash {6 4}
.c create line 300 10224 300 10220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 849 to 851 (Used 1 nobox 1)
# ProcLine[2] stays at 851 (Used 1 nobox 1)
.c create rectangle 258 10222 342 10242 -fill white -width 0
.c create text 300 10232 -text "go NORTH"
.c create text 70 10256 -fill #eef -text "853"
.c create line 140 10256 300 10256 -fill #eef -dash {6 4}
.c create line 140 10200 140 10244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 847 to 853 (Used 1 nobox 1)
# ProcLine[1] stays at 853 (Used 1 nobox 1)
.c create rectangle 103 10246 177 10266 -fill white -width 0
.c create text 140 10256 -text "go!SOUTH"
.c create line 140 10266 220 10266 -fill darkred -tags mesg -width 2
.c create line 220 10266 300 10266 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10280 -fill #eef -text "855"
.c create line 140 10280 300 10280 -fill #eef -dash {6 4}
.c create line 300 10248 300 10268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 851 to 855 (Used 1 nobox 1)
# ProcLine[2] stays at 855 (Used 1 nobox 1)
.c create rectangle 263 10270 337 10290 -fill white -width 0
.c create text 300 10280 -text "go?SOUTH"
.c create text 70 10304 -fill #eef -text "857"
.c create line 140 10304 300 10304 -fill #eef -dash {6 4}
.c create line 300 10296 300 10292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 855 to 857 (Used 1 nobox 1)
# ProcLine[2] stays at 857 (Used 1 nobox 1)
.c create rectangle 258 10294 342 10314 -fill white -width 0
.c create text 300 10304 -text "go SOUTH"
.c create text 70 10328 -fill #eef -text "859"
.c create line 140 10328 300 10328 -fill #eef -dash {6 4}
.c create line 140 10272 140 10316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 853 to 859 (Used 1 nobox 1)
# ProcLine[1] stays at 859 (Used 1 nobox 1)
.c create rectangle 103 10318 177 10338 -fill white -width 0
.c create text 140 10328 -text "go!NORTH"
.c create line 140 10338 220 10338 -fill darkred -tags mesg -width 2
.c create line 220 10338 300 10338 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10352 -fill #eef -text "861"
.c create line 140 10352 300 10352 -fill #eef -dash {6 4}
.c create line 300 10320 300 10340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 857 to 861 (Used 1 nobox 1)
# ProcLine[2] stays at 861 (Used 1 nobox 1)
.c create rectangle 263 10342 337 10362 -fill white -width 0
.c create text 300 10352 -text "go?NORTH"
.c create text 70 10376 -fill #eef -text "863"
.c create line 140 10376 300 10376 -fill #eef -dash {6 4}
.c create line 300 10368 300 10364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 861 to 863 (Used 1 nobox 1)
# ProcLine[2] stays at 863 (Used 1 nobox 1)
.c create rectangle 258 10366 342 10386 -fill white -width 0
.c create text 300 10376 -text "go NORTH"
.c create text 70 10400 -fill #eef -text "865"
.c create line 140 10400 300 10400 -fill #eef -dash {6 4}
.c create line 140 10344 140 10388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 859 to 865 (Used 1 nobox 1)
# ProcLine[1] stays at 865 (Used 1 nobox 1)
.c create rectangle 103 10390 177 10410 -fill white -width 0
.c create text 140 10400 -text "go!NORTH"
.c create line 140 10410 220 10410 -fill darkred -tags mesg -width 2
.c create line 220 10410 300 10410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10424 -fill #eef -text "867"
.c create line 140 10424 300 10424 -fill #eef -dash {6 4}
.c create line 300 10392 300 10412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 863 to 867 (Used 1 nobox 1)
# ProcLine[2] stays at 867 (Used 1 nobox 1)
.c create rectangle 263 10414 337 10434 -fill white -width 0
.c create text 300 10424 -text "go?NORTH"
.c create text 70 10448 -fill #eef -text "869"
.c create line 140 10448 300 10448 -fill #eef -dash {6 4}
.c create line 300 10440 300 10436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 867 to 869 (Used 1 nobox 1)
# ProcLine[2] stays at 869 (Used 1 nobox 1)
.c create rectangle 258 10438 342 10458 -fill white -width 0
.c create text 300 10448 -text "go NORTH"
.c create text 70 10472 -fill #eef -text "871"
.c create line 140 10472 300 10472 -fill #eef -dash {6 4}
.c create line 140 10416 140 10460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 865 to 871 (Used 1 nobox 1)
# ProcLine[1] stays at 871 (Used 1 nobox 1)
.c create rectangle 103 10462 177 10482 -fill white -width 0
.c create text 140 10472 -text "go!SOUTH"
.c create line 140 10482 220 10482 -fill darkred -tags mesg -width 2
.c create line 220 10482 300 10482 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10496 -fill #eef -text "873"
.c create line 140 10496 300 10496 -fill #eef -dash {6 4}
.c create line 300 10464 300 10484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 869 to 873 (Used 1 nobox 1)
# ProcLine[2] stays at 873 (Used 1 nobox 1)
.c create rectangle 263 10486 337 10506 -fill white -width 0
.c create text 300 10496 -text "go?SOUTH"
.c create text 70 10520 -fill #eef -text "875"
.c create line 140 10520 300 10520 -fill #eef -dash {6 4}
.c create line 300 10512 300 10508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 873 to 875 (Used 1 nobox 1)
# ProcLine[2] stays at 875 (Used 1 nobox 1)
.c create rectangle 258 10510 342 10530 -fill white -width 0
.c create text 300 10520 -text "go SOUTH"
.c create text 70 10544 -fill #eef -text "877"
.c create line 140 10544 300 10544 -fill #eef -dash {6 4}
.c create line 140 10488 140 10532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 871 to 877 (Used 1 nobox 1)
# ProcLine[1] stays at 877 (Used 1 nobox 1)
.c create rectangle 103 10534 177 10554 -fill white -width 0
.c create text 140 10544 -text "go!NORTH"
.c create line 140 10554 220 10554 -fill darkred -tags mesg -width 2
.c create line 220 10554 300 10554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10568 -fill #eef -text "879"
.c create line 140 10568 300 10568 -fill #eef -dash {6 4}
.c create line 300 10536 300 10556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 875 to 879 (Used 1 nobox 1)
# ProcLine[2] stays at 879 (Used 1 nobox 1)
.c create rectangle 263 10558 337 10578 -fill white -width 0
.c create text 300 10568 -text "go?NORTH"
.c create text 70 10592 -fill #eef -text "881"
.c create line 140 10592 300 10592 -fill #eef -dash {6 4}
.c create line 300 10584 300 10580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 879 to 881 (Used 1 nobox 1)
# ProcLine[2] stays at 881 (Used 1 nobox 1)
.c create rectangle 258 10582 342 10602 -fill white -width 0
.c create text 300 10592 -text "go NORTH"
.c create text 70 10616 -fill #eef -text "883"
.c create line 140 10616 300 10616 -fill #eef -dash {6 4}
.c create line 140 10560 140 10604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 877 to 883 (Used 1 nobox 1)
# ProcLine[1] stays at 883 (Used 1 nobox 1)
.c create rectangle 103 10606 177 10626 -fill white -width 0
.c create text 140 10616 -text "go!SOUTH"
.c create line 140 10626 220 10626 -fill darkred -tags mesg -width 2
.c create line 220 10626 300 10626 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10640 -fill #eef -text "885"
.c create line 140 10640 300 10640 -fill #eef -dash {6 4}
.c create line 300 10608 300 10628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 881 to 885 (Used 1 nobox 1)
# ProcLine[2] stays at 885 (Used 1 nobox 1)
.c create rectangle 263 10630 337 10650 -fill white -width 0
.c create text 300 10640 -text "go?SOUTH"
.c create text 70 10664 -fill #eef -text "887"
.c create line 140 10664 300 10664 -fill #eef -dash {6 4}
.c create line 300 10656 300 10652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 885 to 887 (Used 1 nobox 1)
# ProcLine[2] stays at 887 (Used 1 nobox 1)
.c create rectangle 258 10654 342 10674 -fill white -width 0
.c create text 300 10664 -text "go SOUTH"
.c create text 70 10688 -fill #eef -text "889"
.c create line 140 10688 300 10688 -fill #eef -dash {6 4}
.c create line 140 10632 140 10676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 883 to 889 (Used 1 nobox 1)
# ProcLine[1] stays at 889 (Used 1 nobox 1)
.c create rectangle 103 10678 177 10698 -fill white -width 0
.c create text 140 10688 -text "go!NORTH"
.c create line 140 10698 220 10698 -fill darkred -tags mesg -width 2
.c create line 220 10698 300 10698 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10712 -fill #eef -text "891"
.c create line 140 10712 300 10712 -fill #eef -dash {6 4}
.c create line 300 10680 300 10700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 887 to 891 (Used 1 nobox 1)
# ProcLine[2] stays at 891 (Used 1 nobox 1)
.c create rectangle 263 10702 337 10722 -fill white -width 0
.c create text 300 10712 -text "go?NORTH"
.c create text 70 10736 -fill #eef -text "893"
.c create line 140 10736 300 10736 -fill #eef -dash {6 4}
.c create line 300 10728 300 10724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 891 to 893 (Used 1 nobox 1)
# ProcLine[2] stays at 893 (Used 1 nobox 1)
.c create rectangle 258 10726 342 10746 -fill white -width 0
.c create text 300 10736 -text "go NORTH"
.c create text 70 10760 -fill #eef -text "895"
.c create line 140 10760 300 10760 -fill #eef -dash {6 4}
.c create line 140 10704 140 10748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 889 to 895 (Used 1 nobox 1)
# ProcLine[1] stays at 895 (Used 1 nobox 1)
.c create rectangle 103 10750 177 10770 -fill white -width 0
.c create text 140 10760 -text "go!SOUTH"
.c create line 140 10770 220 10770 -fill darkred -tags mesg -width 2
.c create line 220 10770 300 10770 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10784 -fill #eef -text "897"
.c create line 140 10784 300 10784 -fill #eef -dash {6 4}
.c create line 300 10752 300 10772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 893 to 897 (Used 1 nobox 1)
# ProcLine[2] stays at 897 (Used 1 nobox 1)
.c create rectangle 263 10774 337 10794 -fill white -width 0
.c create text 300 10784 -text "go?SOUTH"
.c create text 70 10808 -fill #eef -text "899"
.c create line 140 10808 300 10808 -fill #eef -dash {6 4}
.c create line 300 10800 300 10796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 897 to 899 (Used 1 nobox 1)
# ProcLine[2] stays at 899 (Used 1 nobox 1)
.c create rectangle 258 10798 342 10818 -fill white -width 0
.c create text 300 10808 -text "go SOUTH"
.c create text 70 10832 -fill #eef -text "901"
.c create line 140 10832 300 10832 -fill #eef -dash {6 4}
.c create line 140 10776 140 10820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 895 to 901 (Used 1 nobox 1)
# ProcLine[1] stays at 901 (Used 1 nobox 1)
.c create rectangle 103 10822 177 10842 -fill white -width 0
.c create text 140 10832 -text "go!NORTH"
.c create line 140 10842 220 10842 -fill darkred -tags mesg -width 2
.c create line 220 10842 300 10842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10856 -fill #eef -text "903"
.c create line 140 10856 300 10856 -fill #eef -dash {6 4}
.c create line 300 10824 300 10844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 899 to 903 (Used 1 nobox 1)
# ProcLine[2] stays at 903 (Used 1 nobox 1)
.c create rectangle 263 10846 337 10866 -fill white -width 0
.c create text 300 10856 -text "go?NORTH"
.c create text 70 10880 -fill #eef -text "905"
.c create line 140 10880 300 10880 -fill #eef -dash {6 4}
.c create line 300 10872 300 10868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 903 to 905 (Used 1 nobox 1)
# ProcLine[2] stays at 905 (Used 1 nobox 1)
.c create rectangle 258 10870 342 10890 -fill white -width 0
.c create text 300 10880 -text "go NORTH"
.c create text 70 10904 -fill #eef -text "907"
.c create line 140 10904 300 10904 -fill #eef -dash {6 4}
.c create line 140 10848 140 10892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 901 to 907 (Used 1 nobox 1)
# ProcLine[1] stays at 907 (Used 1 nobox 1)
.c create rectangle 103 10894 177 10914 -fill white -width 0
.c create text 140 10904 -text "go!SOUTH"
.c create line 140 10914 220 10914 -fill darkred -tags mesg -width 2
.c create line 220 10914 300 10914 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10928 -fill #eef -text "909"
.c create line 140 10928 300 10928 -fill #eef -dash {6 4}
.c create line 300 10896 300 10916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 905 to 909 (Used 1 nobox 1)
# ProcLine[2] stays at 909 (Used 1 nobox 1)
.c create rectangle 263 10918 337 10938 -fill white -width 0
.c create text 300 10928 -text "go?SOUTH"
.c create text 70 10952 -fill #eef -text "911"
.c create line 140 10952 300 10952 -fill #eef -dash {6 4}
.c create line 300 10944 300 10940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 909 to 911 (Used 1 nobox 1)
# ProcLine[2] stays at 911 (Used 1 nobox 1)
.c create rectangle 258 10942 342 10962 -fill white -width 0
.c create text 300 10952 -text "go SOUTH"
.c create text 70 10976 -fill #eef -text "913"
.c create line 140 10976 300 10976 -fill #eef -dash {6 4}
.c create line 140 10920 140 10964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 907 to 913 (Used 1 nobox 1)
# ProcLine[1] stays at 913 (Used 1 nobox 1)
.c create rectangle 103 10966 177 10986 -fill white -width 0
.c create text 140 10976 -text "go!SOUTH"
.c create line 140 10986 220 10986 -fill darkred -tags mesg -width 2
.c create line 220 10986 300 10986 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11000 -fill #eef -text "915"
.c create line 140 11000 300 11000 -fill #eef -dash {6 4}
.c create line 300 10968 300 10988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 911 to 915 (Used 1 nobox 1)
# ProcLine[2] stays at 915 (Used 1 nobox 1)
.c create rectangle 263 10990 337 11010 -fill white -width 0
.c create text 300 11000 -text "go?SOUTH"
.c create text 70 11024 -fill #eef -text "917"
.c create line 140 11024 300 11024 -fill #eef -dash {6 4}
.c create line 300 11016 300 11012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 915 to 917 (Used 1 nobox 1)
# ProcLine[2] stays at 917 (Used 1 nobox 1)
.c create rectangle 258 11014 342 11034 -fill white -width 0
.c create text 300 11024 -text "go SOUTH"
.c create text 70 11048 -fill #eef -text "919"
.c create line 140 11048 300 11048 -fill #eef -dash {6 4}
.c create line 140 10992 140 11036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 913 to 919 (Used 1 nobox 1)
# ProcLine[1] stays at 919 (Used 1 nobox 1)
.c create rectangle 103 11038 177 11058 -fill white -width 0
.c create text 140 11048 -text "go!NORTH"
.c create line 140 11058 220 11058 -fill darkred -tags mesg -width 2
.c create line 220 11058 300 11058 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11072 -fill #eef -text "921"
.c create line 140 11072 300 11072 -fill #eef -dash {6 4}
.c create line 300 11040 300 11060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 917 to 921 (Used 1 nobox 1)
# ProcLine[2] stays at 921 (Used 1 nobox 1)
.c create rectangle 263 11062 337 11082 -fill white -width 0
.c create text 300 11072 -text "go?NORTH"
.c create text 70 11096 -fill #eef -text "923"
.c create line 140 11096 300 11096 -fill #eef -dash {6 4}
.c create line 300 11088 300 11084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 921 to 923 (Used 1 nobox 1)
# ProcLine[2] stays at 923 (Used 1 nobox 1)
.c create rectangle 258 11086 342 11106 -fill white -width 0
.c create text 300 11096 -text "go NORTH"
.c create text 70 11120 -fill #eef -text "925"
.c create line 140 11120 300 11120 -fill #eef -dash {6 4}
.c create line 140 11064 140 11108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 919 to 925 (Used 1 nobox 1)
# ProcLine[1] stays at 925 (Used 1 nobox 1)
.c create rectangle 103 11110 177 11130 -fill white -width 0
.c create text 140 11120 -text "go!NORTH"
.c create line 140 11130 220 11130 -fill darkred -tags mesg -width 2
.c create line 220 11130 300 11130 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11144 -fill #eef -text "927"
.c create line 140 11144 300 11144 -fill #eef -dash {6 4}
.c create line 300 11112 300 11132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 923 to 927 (Used 1 nobox 1)
# ProcLine[2] stays at 927 (Used 1 nobox 1)
.c create rectangle 263 11134 337 11154 -fill white -width 0
.c create text 300 11144 -text "go?NORTH"
.c create text 70 11168 -fill #eef -text "929"
.c create line 140 11168 300 11168 -fill #eef -dash {6 4}
.c create line 300 11160 300 11156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 927 to 929 (Used 1 nobox 1)
# ProcLine[2] stays at 929 (Used 1 nobox 1)
.c create rectangle 258 11158 342 11178 -fill white -width 0
.c create text 300 11168 -text "go NORTH"
.c create text 70 11192 -fill #eef -text "931"
.c create line 140 11192 300 11192 -fill #eef -dash {6 4}
.c create line 140 11136 140 11180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 925 to 931 (Used 1 nobox 1)
# ProcLine[1] stays at 931 (Used 1 nobox 1)
.c create rectangle 103 11182 177 11202 -fill white -width 0
.c create text 140 11192 -text "go!SOUTH"
.c create line 140 11202 220 11202 -fill darkred -tags mesg -width 2
.c create line 220 11202 300 11202 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11216 -fill #eef -text "933"
.c create line 140 11216 300 11216 -fill #eef -dash {6 4}
.c create line 300 11184 300 11204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 929 to 933 (Used 1 nobox 1)
# ProcLine[2] stays at 933 (Used 1 nobox 1)
.c create rectangle 263 11206 337 11226 -fill white -width 0
.c create text 300 11216 -text "go?SOUTH"
.c create text 70 11240 -fill #eef -text "935"
.c create line 140 11240 300 11240 -fill #eef -dash {6 4}
.c create line 300 11232 300 11228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 933 to 935 (Used 1 nobox 1)
# ProcLine[2] stays at 935 (Used 1 nobox 1)
.c create rectangle 258 11230 342 11250 -fill white -width 0
.c create text 300 11240 -text "go SOUTH"
.c create text 70 11264 -fill #eef -text "937"
.c create line 140 11264 300 11264 -fill #eef -dash {6 4}
.c create line 140 11208 140 11252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 931 to 937 (Used 1 nobox 1)
# ProcLine[1] stays at 937 (Used 1 nobox 1)
.c create rectangle 103 11254 177 11274 -fill white -width 0
.c create text 140 11264 -text "go!SOUTH"
.c create line 140 11274 220 11274 -fill darkred -tags mesg -width 2
.c create line 220 11274 300 11274 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11288 -fill #eef -text "939"
.c create line 140 11288 300 11288 -fill #eef -dash {6 4}
.c create line 300 11256 300 11276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 935 to 939 (Used 1 nobox 1)
# ProcLine[2] stays at 939 (Used 1 nobox 1)
.c create rectangle 263 11278 337 11298 -fill white -width 0
.c create text 300 11288 -text "go?SOUTH"
.c create text 70 11312 -fill #eef -text "941"
.c create line 140 11312 300 11312 -fill #eef -dash {6 4}
.c create line 300 11304 300 11300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 939 to 941 (Used 1 nobox 1)
# ProcLine[2] stays at 941 (Used 1 nobox 1)
.c create rectangle 258 11302 342 11322 -fill white -width 0
.c create text 300 11312 -text "go SOUTH"
.c create text 70 11336 -fill #eef -text "943"
.c create line 140 11336 300 11336 -fill #eef -dash {6 4}
.c create line 140 11280 140 11324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 937 to 943 (Used 1 nobox 1)
# ProcLine[1] stays at 943 (Used 1 nobox 1)
.c create rectangle 103 11326 177 11346 -fill white -width 0
.c create text 140 11336 -text "go!SOUTH"
.c create line 140 11346 220 11346 -fill darkred -tags mesg -width 2
.c create line 220 11346 300 11346 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11360 -fill #eef -text "945"
.c create line 140 11360 300 11360 -fill #eef -dash {6 4}
.c create line 300 11328 300 11348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 941 to 945 (Used 1 nobox 1)
# ProcLine[2] stays at 945 (Used 1 nobox 1)
.c create rectangle 263 11350 337 11370 -fill white -width 0
.c create text 300 11360 -text "go?SOUTH"
.c create text 70 11384 -fill #eef -text "947"
.c create line 140 11384 300 11384 -fill #eef -dash {6 4}
.c create line 300 11376 300 11372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 945 to 947 (Used 1 nobox 1)
# ProcLine[2] stays at 947 (Used 1 nobox 1)
.c create rectangle 258 11374 342 11394 -fill white -width 0
.c create text 300 11384 -text "go SOUTH"
.c create text 70 11408 -fill #eef -text "949"
.c create line 140 11408 300 11408 -fill #eef -dash {6 4}
.c create line 140 11352 140 11396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 943 to 949 (Used 1 nobox 1)
# ProcLine[1] stays at 949 (Used 1 nobox 1)
.c create rectangle 103 11398 177 11418 -fill white -width 0
.c create text 140 11408 -text "go!NORTH"
.c create line 140 11418 220 11418 -fill darkred -tags mesg -width 2
.c create line 220 11418 300 11418 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11432 -fill #eef -text "951"
.c create line 140 11432 300 11432 -fill #eef -dash {6 4}
.c create line 300 11400 300 11420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 947 to 951 (Used 1 nobox 1)
# ProcLine[2] stays at 951 (Used 1 nobox 1)
.c create rectangle 263 11422 337 11442 -fill white -width 0
.c create text 300 11432 -text "go?NORTH"
.c create text 70 11456 -fill #eef -text "953"
.c create line 140 11456 300 11456 -fill #eef -dash {6 4}
.c create line 300 11448 300 11444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 951 to 953 (Used 1 nobox 1)
# ProcLine[2] stays at 953 (Used 1 nobox 1)
.c create rectangle 258 11446 342 11466 -fill white -width 0
.c create text 300 11456 -text "go NORTH"
.c create text 70 11480 -fill #eef -text "955"
.c create line 140 11480 300 11480 -fill #eef -dash {6 4}
.c create line 140 11424 140 11468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 949 to 955 (Used 1 nobox 1)
# ProcLine[1] stays at 955 (Used 1 nobox 1)
.c create rectangle 103 11470 177 11490 -fill white -width 0
.c create text 140 11480 -text "go!NORTH"
.c create line 140 11490 220 11490 -fill darkred -tags mesg -width 2
.c create line 220 11490 300 11490 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11504 -fill #eef -text "957"
.c create line 140 11504 300 11504 -fill #eef -dash {6 4}
.c create line 300 11472 300 11492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 953 to 957 (Used 1 nobox 1)
# ProcLine[2] stays at 957 (Used 1 nobox 1)
.c create rectangle 263 11494 337 11514 -fill white -width 0
.c create text 300 11504 -text "go?NORTH"
.c create text 70 11528 -fill #eef -text "959"
.c create line 140 11528 300 11528 -fill #eef -dash {6 4}
.c create line 300 11520 300 11516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 957 to 959 (Used 1 nobox 1)
# ProcLine[2] stays at 959 (Used 1 nobox 1)
.c create rectangle 258 11518 342 11538 -fill white -width 0
.c create text 300 11528 -text "go NORTH"
.c create text 70 11552 -fill #eef -text "961"
.c create line 140 11552 300 11552 -fill #eef -dash {6 4}
.c create line 140 11496 140 11540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 955 to 961 (Used 1 nobox 1)
# ProcLine[1] stays at 961 (Used 1 nobox 1)
.c create rectangle 103 11542 177 11562 -fill white -width 0
.c create text 140 11552 -text "go!SOUTH"
.c create line 140 11562 220 11562 -fill darkred -tags mesg -width 2
.c create line 220 11562 300 11562 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11576 -fill #eef -text "963"
.c create line 140 11576 300 11576 -fill #eef -dash {6 4}
.c create line 300 11544 300 11564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 959 to 963 (Used 1 nobox 1)
# ProcLine[2] stays at 963 (Used 1 nobox 1)
.c create rectangle 263 11566 337 11586 -fill white -width 0
.c create text 300 11576 -text "go?SOUTH"
.c create text 70 11600 -fill #eef -text "965"
.c create line 140 11600 300 11600 -fill #eef -dash {6 4}
.c create line 300 11592 300 11588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 963 to 965 (Used 1 nobox 1)
# ProcLine[2] stays at 965 (Used 1 nobox 1)
.c create rectangle 258 11590 342 11610 -fill white -width 0
.c create text 300 11600 -text "go SOUTH"
.c create text 70 11624 -fill #eef -text "967"
.c create line 140 11624 300 11624 -fill #eef -dash {6 4}
.c create line 140 11568 140 11612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 961 to 967 (Used 1 nobox 1)
# ProcLine[1] stays at 967 (Used 1 nobox 1)
.c create rectangle 103 11614 177 11634 -fill white -width 0
.c create text 140 11624 -text "go!NORTH"
.c create line 140 11634 220 11634 -fill darkred -tags mesg -width 2
.c create line 220 11634 300 11634 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11648 -fill #eef -text "969"
.c create line 140 11648 300 11648 -fill #eef -dash {6 4}
.c create line 300 11616 300 11636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 965 to 969 (Used 1 nobox 1)
# ProcLine[2] stays at 969 (Used 1 nobox 1)
.c create rectangle 263 11638 337 11658 -fill white -width 0
.c create text 300 11648 -text "go?NORTH"
.c create text 70 11672 -fill #eef -text "971"
.c create line 140 11672 300 11672 -fill #eef -dash {6 4}
.c create line 300 11664 300 11660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 969 to 971 (Used 1 nobox 1)
# ProcLine[2] stays at 971 (Used 1 nobox 1)
.c create rectangle 258 11662 342 11682 -fill white -width 0
.c create text 300 11672 -text "go NORTH"
.c create text 70 11696 -fill #eef -text "973"
.c create line 140 11696 300 11696 -fill #eef -dash {6 4}
.c create line 140 11640 140 11684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 967 to 973 (Used 1 nobox 1)
# ProcLine[1] stays at 973 (Used 1 nobox 1)
.c create rectangle 103 11686 177 11706 -fill white -width 0
.c create text 140 11696 -text "go!SOUTH"
.c create line 140 11706 220 11706 -fill darkred -tags mesg -width 2
.c create line 220 11706 300 11706 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11720 -fill #eef -text "975"
.c create line 140 11720 300 11720 -fill #eef -dash {6 4}
.c create line 300 11688 300 11708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 971 to 975 (Used 1 nobox 1)
# ProcLine[2] stays at 975 (Used 1 nobox 1)
.c create rectangle 263 11710 337 11730 -fill white -width 0
.c create text 300 11720 -text "go?SOUTH"
.c create text 70 11744 -fill #eef -text "977"
.c create line 140 11744 300 11744 -fill #eef -dash {6 4}
.c create line 300 11736 300 11732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 975 to 977 (Used 1 nobox 1)
# ProcLine[2] stays at 977 (Used 1 nobox 1)
.c create rectangle 258 11734 342 11754 -fill white -width 0
.c create text 300 11744 -text "go SOUTH"
.c create text 70 11768 -fill #eef -text "979"
.c create line 140 11768 300 11768 -fill #eef -dash {6 4}
.c create line 140 11712 140 11756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 973 to 979 (Used 1 nobox 1)
# ProcLine[1] stays at 979 (Used 1 nobox 1)
.c create rectangle 103 11758 177 11778 -fill white -width 0
.c create text 140 11768 -text "go!NORTH"
.c create line 140 11778 220 11778 -fill darkred -tags mesg -width 2
.c create line 220 11778 300 11778 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11792 -fill #eef -text "981"
.c create line 140 11792 300 11792 -fill #eef -dash {6 4}
.c create line 300 11760 300 11780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 977 to 981 (Used 1 nobox 1)
# ProcLine[2] stays at 981 (Used 1 nobox 1)
.c create rectangle 263 11782 337 11802 -fill white -width 0
.c create text 300 11792 -text "go?NORTH"
.c create text 70 11816 -fill #eef -text "983"
.c create line 140 11816 300 11816 -fill #eef -dash {6 4}
.c create line 300 11808 300 11804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 981 to 983 (Used 1 nobox 1)
# ProcLine[2] stays at 983 (Used 1 nobox 1)
.c create rectangle 258 11806 342 11826 -fill white -width 0
.c create text 300 11816 -text "go NORTH"
.c create text 70 11840 -fill #eef -text "985"
.c create line 140 11840 300 11840 -fill #eef -dash {6 4}
.c create line 140 11784 140 11828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 979 to 985 (Used 1 nobox 1)
# ProcLine[1] stays at 985 (Used 1 nobox 1)
.c create rectangle 103 11830 177 11850 -fill white -width 0
.c create text 140 11840 -text "go!NORTH"
.c create line 140 11850 220 11850 -fill darkred -tags mesg -width 2
.c create line 220 11850 300 11850 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11864 -fill #eef -text "987"
.c create line 140 11864 300 11864 -fill #eef -dash {6 4}
.c create line 300 11832 300 11852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 983 to 987 (Used 1 nobox 1)
# ProcLine[2] stays at 987 (Used 1 nobox 1)
.c create rectangle 263 11854 337 11874 -fill white -width 0
.c create text 300 11864 -text "go?NORTH"
.c create text 70 11888 -fill #eef -text "989"
.c create line 140 11888 300 11888 -fill #eef -dash {6 4}
.c create line 300 11880 300 11876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 987 to 989 (Used 1 nobox 1)
# ProcLine[2] stays at 989 (Used 1 nobox 1)
.c create rectangle 258 11878 342 11898 -fill white -width 0
.c create text 300 11888 -text "go NORTH"
.c create text 70 11912 -fill #eef -text "991"
.c create line 140 11912 300 11912 -fill #eef -dash {6 4}
.c create line 140 11856 140 11900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 985 to 991 (Used 1 nobox 1)
# ProcLine[1] stays at 991 (Used 1 nobox 1)
.c create rectangle 103 11902 177 11922 -fill white -width 0
.c create text 140 11912 -text "go!SOUTH"
.c create line 140 11922 220 11922 -fill darkred -tags mesg -width 2
.c create line 220 11922 300 11922 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11936 -fill #eef -text "993"
.c create line 140 11936 300 11936 -fill #eef -dash {6 4}
.c create line 300 11904 300 11924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 989 to 993 (Used 1 nobox 1)
# ProcLine[2] stays at 993 (Used 1 nobox 1)
.c create rectangle 263 11926 337 11946 -fill white -width 0
.c create text 300 11936 -text "go?SOUTH"
.c create text 70 11960 -fill #eef -text "995"
.c create line 140 11960 300 11960 -fill #eef -dash {6 4}
.c create line 300 11952 300 11948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 993 to 995 (Used 1 nobox 1)
# ProcLine[2] stays at 995 (Used 1 nobox 1)
.c create rectangle 258 11950 342 11970 -fill white -width 0
.c create text 300 11960 -text "go SOUTH"
.c create text 70 11984 -fill #eef -text "997"
.c create line 140 11984 300 11984 -fill #eef -dash {6 4}
.c create line 140 11928 140 11972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 991 to 997 (Used 1 nobox 1)
# ProcLine[1] stays at 997 (Used 1 nobox 1)
.c create rectangle 103 11974 177 11994 -fill white -width 0
.c create text 140 11984 -text "go!SOUTH"
.c create line 140 11994 220 11994 -fill darkred -tags mesg -width 2
.c create line 220 11994 300 11994 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12008 -fill #eef -text "999"
.c create line 140 12008 300 12008 -fill #eef -dash {6 4}
.c create line 300 11976 300 11996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 995 to 999 (Used 1 nobox 1)
# ProcLine[2] stays at 999 (Used 1 nobox 1)
.c create rectangle 263 11998 337 12018 -fill white -width 0
.c create text 300 12008 -text "go?SOUTH"
.c create text 70 12032 -fill #eef -text "1001"
.c create line 140 12032 300 12032 -fill #eef -dash {6 4}
.c create line 300 12024 300 12020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 999 to 1001 (Used 1 nobox 1)
# ProcLine[2] stays at 1001 (Used 1 nobox 1)
.c create rectangle 258 12022 342 12042 -fill white -width 0
.c create text 300 12032 -text "go SOUTH"
.c create text 70 12056 -fill #eef -text "1003"
.c create line 140 12056 300 12056 -fill #eef -dash {6 4}
.c create line 140 12000 140 12044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 997 to 1003 (Used 1 nobox 1)
# ProcLine[1] stays at 1003 (Used 1 nobox 1)
.c create rectangle 103 12046 177 12066 -fill white -width 0
.c create text 140 12056 -text "go!NORTH"
.c create line 140 12066 220 12066 -fill darkred -tags mesg -width 2
.c create line 220 12066 300 12066 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12080 -fill #eef -text "1005"
.c create line 140 12080 300 12080 -fill #eef -dash {6 4}
.c create line 300 12048 300 12068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1001 to 1005 (Used 1 nobox 1)
# ProcLine[2] stays at 1005 (Used 1 nobox 1)
.c create rectangle 263 12070 337 12090 -fill white -width 0
.c create text 300 12080 -text "go?NORTH"
.c create text 70 12104 -fill #eef -text "1007"
.c create line 140 12104 300 12104 -fill #eef -dash {6 4}
.c create line 300 12096 300 12092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1005 to 1007 (Used 1 nobox 1)
# ProcLine[2] stays at 1007 (Used 1 nobox 1)
.c create rectangle 258 12094 342 12114 -fill white -width 0
.c create text 300 12104 -text "go NORTH"
.c create text 70 12128 -fill #eef -text "1009"
.c create line 140 12128 300 12128 -fill #eef -dash {6 4}
.c create line 140 12072 140 12116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1003 to 1009 (Used 1 nobox 1)
# ProcLine[1] stays at 1009 (Used 1 nobox 1)
.c create rectangle 103 12118 177 12138 -fill white -width 0
.c create text 140 12128 -text "go!SOUTH"
.c create line 140 12138 220 12138 -fill darkred -tags mesg -width 2
.c create line 220 12138 300 12138 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12152 -fill #eef -text "1011"
.c create line 140 12152 300 12152 -fill #eef -dash {6 4}
.c create line 300 12120 300 12140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1007 to 1011 (Used 1 nobox 1)
# ProcLine[2] stays at 1011 (Used 1 nobox 1)
.c create rectangle 263 12142 337 12162 -fill white -width 0
.c create text 300 12152 -text "go?SOUTH"
.c create text 70 12176 -fill #eef -text "1013"
.c create line 140 12176 300 12176 -fill #eef -dash {6 4}
.c create line 300 12168 300 12164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1011 to 1013 (Used 1 nobox 1)
# ProcLine[2] stays at 1013 (Used 1 nobox 1)
.c create rectangle 258 12166 342 12186 -fill white -width 0
.c create text 300 12176 -text "go SOUTH"
.c create text 70 12200 -fill #eef -text "1015"
.c create line 140 12200 300 12200 -fill #eef -dash {6 4}
.c create line 140 12144 140 12188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1009 to 1015 (Used 1 nobox 1)
# ProcLine[1] stays at 1015 (Used 1 nobox 1)
.c create rectangle 103 12190 177 12210 -fill white -width 0
.c create text 140 12200 -text "go!NORTH"
.c create line 140 12210 220 12210 -fill darkred -tags mesg -width 2
.c create line 220 12210 300 12210 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12224 -fill #eef -text "1017"
.c create line 140 12224 300 12224 -fill #eef -dash {6 4}
.c create line 300 12192 300 12212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1013 to 1017 (Used 1 nobox 1)
# ProcLine[2] stays at 1017 (Used 1 nobox 1)
.c create rectangle 263 12214 337 12234 -fill white -width 0
.c create text 300 12224 -text "go?NORTH"
.c create text 70 12248 -fill #eef -text "1019"
.c create line 140 12248 300 12248 -fill #eef -dash {6 4}
.c create line 300 12240 300 12236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1017 to 1019 (Used 1 nobox 1)
# ProcLine[2] stays at 1019 (Used 1 nobox 1)
.c create rectangle 258 12238 342 12258 -fill white -width 0
.c create text 300 12248 -text "go NORTH"
.c create text 70 12272 -fill #eef -text "1021"
.c create line 140 12272 300 12272 -fill #eef -dash {6 4}
.c create line 140 12216 140 12260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1015 to 1021 (Used 1 nobox 1)
# ProcLine[1] stays at 1021 (Used 1 nobox 1)
.c create rectangle 103 12262 177 12282 -fill white -width 0
.c create text 140 12272 -text "go!NORTH"
.c create line 140 12282 220 12282 -fill darkred -tags mesg -width 2
.c create line 220 12282 300 12282 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12296 -fill #eef -text "1023"
.c create line 140 12296 300 12296 -fill #eef -dash {6 4}
.c create line 300 12264 300 12284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1019 to 1023 (Used 1 nobox 1)
# ProcLine[2] stays at 1023 (Used 1 nobox 1)
.c create rectangle 263 12286 337 12306 -fill white -width 0
.c create text 300 12296 -text "go?NORTH"
.c create text 70 12320 -fill #eef -text "1025"
.c create line 140 12320 300 12320 -fill #eef -dash {6 4}
.c create line 300 12312 300 12308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1023 to 1025 (Used 1 nobox 1)
# ProcLine[2] stays at 1025 (Used 1 nobox 1)
.c create rectangle 258 12310 342 12330 -fill white -width 0
.c create text 300 12320 -text "go NORTH"
.c create text 70 12344 -fill #eef -text "1027"
.c create line 140 12344 300 12344 -fill #eef -dash {6 4}
.c create line 140 12288 140 12332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1021 to 1027 (Used 1 nobox 1)
# ProcLine[1] stays at 1027 (Used 1 nobox 1)
.c create rectangle 103 12334 177 12354 -fill white -width 0
.c create text 140 12344 -text "go!SOUTH"
.c create line 140 12354 220 12354 -fill darkred -tags mesg -width 2
.c create line 220 12354 300 12354 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12368 -fill #eef -text "1029"
.c create line 140 12368 300 12368 -fill #eef -dash {6 4}
.c create line 300 12336 300 12356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1025 to 1029 (Used 1 nobox 1)
# ProcLine[2] stays at 1029 (Used 1 nobox 1)
.c create rectangle 263 12358 337 12378 -fill white -width 0
.c create text 300 12368 -text "go?SOUTH"
.c create text 70 12392 -fill #eef -text "1031"
.c create line 140 12392 300 12392 -fill #eef -dash {6 4}
.c create line 300 12384 300 12380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1029 to 1031 (Used 1 nobox 1)
# ProcLine[2] stays at 1031 (Used 1 nobox 1)
.c create rectangle 258 12382 342 12402 -fill white -width 0
.c create text 300 12392 -text "go SOUTH"
.c create text 70 12416 -fill #eef -text "1033"
.c create line 140 12416 300 12416 -fill #eef -dash {6 4}
.c create line 140 12360 140 12404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1027 to 1033 (Used 1 nobox 1)
# ProcLine[1] stays at 1033 (Used 1 nobox 1)
.c create rectangle 103 12406 177 12426 -fill white -width 0
.c create text 140 12416 -text "go!SOUTH"
.c create line 140 12426 220 12426 -fill darkred -tags mesg -width 2
.c create line 220 12426 300 12426 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12440 -fill #eef -text "1035"
.c create line 140 12440 300 12440 -fill #eef -dash {6 4}
.c create line 300 12408 300 12428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1031 to 1035 (Used 1 nobox 1)
# ProcLine[2] stays at 1035 (Used 1 nobox 1)
.c create rectangle 263 12430 337 12450 -fill white -width 0
.c create text 300 12440 -text "go?SOUTH"
.c create text 70 12464 -fill #eef -text "1037"
.c create line 140 12464 300 12464 -fill #eef -dash {6 4}
.c create line 300 12456 300 12452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1035 to 1037 (Used 1 nobox 1)
# ProcLine[2] stays at 1037 (Used 1 nobox 1)
.c create rectangle 258 12454 342 12474 -fill white -width 0
.c create text 300 12464 -text "go SOUTH"
.c create text 70 12488 -fill #eef -text "1039"
.c create line 140 12488 300 12488 -fill #eef -dash {6 4}
.c create line 140 12432 140 12476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1033 to 1039 (Used 1 nobox 1)
# ProcLine[1] stays at 1039 (Used 1 nobox 1)
.c create rectangle 103 12478 177 12498 -fill white -width 0
.c create text 140 12488 -text "go!SOUTH"
.c create line 140 12498 220 12498 -fill darkred -tags mesg -width 2
.c create line 220 12498 300 12498 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12512 -fill #eef -text "1041"
.c create line 140 12512 300 12512 -fill #eef -dash {6 4}
.c create line 300 12480 300 12500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1037 to 1041 (Used 1 nobox 1)
# ProcLine[2] stays at 1041 (Used 1 nobox 1)
.c create rectangle 263 12502 337 12522 -fill white -width 0
.c create text 300 12512 -text "go?SOUTH"
.c create text 70 12536 -fill #eef -text "1043"
.c create line 140 12536 300 12536 -fill #eef -dash {6 4}
.c create line 300 12528 300 12524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1041 to 1043 (Used 1 nobox 1)
# ProcLine[2] stays at 1043 (Used 1 nobox 1)
.c create rectangle 258 12526 342 12546 -fill white -width 0
.c create text 300 12536 -text "go SOUTH"
.c create text 70 12560 -fill #eef -text "1045"
.c create line 140 12560 300 12560 -fill #eef -dash {6 4}
.c create line 140 12504 140 12548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1039 to 1045 (Used 1 nobox 1)
# ProcLine[1] stays at 1045 (Used 1 nobox 1)
.c create rectangle 103 12550 177 12570 -fill white -width 0
.c create text 140 12560 -text "go!NORTH"
.c create line 140 12570 220 12570 -fill darkred -tags mesg -width 2
.c create line 220 12570 300 12570 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12584 -fill #eef -text "1047"
.c create line 140 12584 300 12584 -fill #eef -dash {6 4}
.c create line 300 12552 300 12572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1043 to 1047 (Used 1 nobox 1)
# ProcLine[2] stays at 1047 (Used 1 nobox 1)
.c create rectangle 263 12574 337 12594 -fill white -width 0
.c create text 300 12584 -text "go?NORTH"
.c create text 70 12608 -fill #eef -text "1049"
.c create line 140 12608 300 12608 -fill #eef -dash {6 4}
.c create line 300 12600 300 12596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1047 to 1049 (Used 1 nobox 1)
# ProcLine[2] stays at 1049 (Used 1 nobox 1)
.c create rectangle 258 12598 342 12618 -fill white -width 0
.c create text 300 12608 -text "go NORTH"
.c create text 70 12632 -fill #eef -text "1051"
.c create line 140 12632 300 12632 -fill #eef -dash {6 4}
.c create line 140 12576 140 12620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1045 to 1051 (Used 1 nobox 1)
# ProcLine[1] stays at 1051 (Used 1 nobox 1)
.c create rectangle 103 12622 177 12642 -fill white -width 0
.c create text 140 12632 -text "go!SOUTH"
.c create line 140 12642 220 12642 -fill darkred -tags mesg -width 2
.c create line 220 12642 300 12642 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12656 -fill #eef -text "1053"
.c create line 140 12656 300 12656 -fill #eef -dash {6 4}
.c create line 300 12624 300 12644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1049 to 1053 (Used 1 nobox 1)
# ProcLine[2] stays at 1053 (Used 1 nobox 1)
.c create rectangle 263 12646 337 12666 -fill white -width 0
.c create text 300 12656 -text "go?SOUTH"
.c create text 70 12680 -fill #eef -text "1055"
.c create line 140 12680 300 12680 -fill #eef -dash {6 4}
.c create line 300 12672 300 12668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1053 to 1055 (Used 1 nobox 1)
# ProcLine[2] stays at 1055 (Used 1 nobox 1)
.c create rectangle 258 12670 342 12690 -fill white -width 0
.c create text 300 12680 -text "go SOUTH"
.c create text 70 12704 -fill #eef -text "1057"
.c create line 140 12704 300 12704 -fill #eef -dash {6 4}
.c create line 140 12648 140 12692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1051 to 1057 (Used 1 nobox 1)
# ProcLine[1] stays at 1057 (Used 1 nobox 1)
.c create rectangle 108 12694 172 12714 -fill white -width 0
.c create text 140 12704 -text "go!WEST"
.c create line 140 12714 220 12714 -fill darkred -tags mesg -width 2
.c create line 220 12714 300 12714 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12728 -fill #eef -text "1059"
.c create line 140 12728 300 12728 -fill #eef -dash {6 4}
.c create line 300 12696 300 12716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1055 to 1059 (Used 1 nobox 1)
# ProcLine[2] stays at 1059 (Used 1 nobox 1)
.c create rectangle 268 12718 332 12738 -fill white -width 0
.c create text 300 12728 -text "go?WEST"
.c create text 70 12752 -fill #eef -text "1061"
.c create line 140 12752 300 12752 -fill #eef -dash {6 4}
.c create line 300 12744 300 12740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1059 to 1061 (Used 1 nobox 1)
# ProcLine[2] stays at 1061 (Used 1 nobox 1)
.c create rectangle 263 12742 337 12762 -fill white -width 0
.c create text 300 12752 -text "go WEST"
.c create text 70 12776 -fill #eef -text "1063"
.c create line 140 12776 300 12776 -fill #eef -dash {6 4}
.c create line 140 12720 140 12764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1057 to 1063 (Used 1 nobox 1)
# ProcLine[1] stays at 1063 (Used 1 nobox 1)
.c create rectangle 108 12766 172 12786 -fill white -width 0
.c create text 140 12776 -text "go!WEST"
.c create line 140 12786 220 12786 -fill darkred -tags mesg -width 2
.c create line 220 12786 300 12786 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12800 -fill #eef -text "1065"
.c create line 140 12800 300 12800 -fill #eef -dash {6 4}
.c create line 300 12768 300 12788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1061 to 1065 (Used 1 nobox 1)
# ProcLine[2] stays at 1065 (Used 1 nobox 1)
.c create rectangle 268 12790 332 12810 -fill white -width 0
.c create text 300 12800 -text "go?WEST"
.c create text 70 12824 -fill #eef -text "1067"
.c create line 140 12824 300 12824 -fill #eef -dash {6 4}
.c create line 300 12816 300 12812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1065 to 1067 (Used 1 nobox 1)
# ProcLine[2] stays at 1067 (Used 1 nobox 1)
.c create rectangle 263 12814 337 12834 -fill white -width 0
.c create text 300 12824 -text "go WEST"
.c create text 70 12848 -fill #eef -text "1069"
.c create line 140 12848 300 12848 -fill #eef -dash {6 4}
.c create line 140 12792 140 12836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1063 to 1069 (Used 1 nobox 1)
# ProcLine[1] stays at 1069 (Used 1 nobox 1)
.c create rectangle 108 12838 172 12858 -fill white -width 0
.c create text 140 12848 -text "go!WEST"
.c create line 140 12858 220 12858 -fill darkred -tags mesg -width 2
.c create line 220 12858 300 12858 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12872 -fill #eef -text "1071"
.c create line 140 12872 300 12872 -fill #eef -dash {6 4}
.c create line 300 12840 300 12860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1067 to 1071 (Used 1 nobox 1)
# ProcLine[2] stays at 1071 (Used 1 nobox 1)
.c create rectangle 268 12862 332 12882 -fill white -width 0
.c create text 300 12872 -text "go?WEST"
.c create text 70 12896 -fill #eef -text "1073"
.c create line 140 12896 300 12896 -fill #eef -dash {6 4}
.c create line 300 12888 300 12884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1071 to 1073 (Used 1 nobox 1)
# ProcLine[2] stays at 1073 (Used 1 nobox 1)
.c create rectangle 263 12886 337 12906 -fill white -width 0
.c create text 300 12896 -text "go WEST"
.c create text 70 12920 -fill #eef -text "1075"
.c create line 140 12920 300 12920 -fill #eef -dash {6 4}
.c create line 140 12864 140 12908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1069 to 1075 (Used 1 nobox 1)
# ProcLine[1] stays at 1075 (Used 1 nobox 1)
.c create rectangle 108 12910 172 12930 -fill white -width 0
.c create text 140 12920 -text "go!EAST"
.c create line 140 12930 220 12930 -fill darkred -tags mesg -width 2
.c create line 220 12930 300 12930 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12944 -fill #eef -text "1077"
.c create line 140 12944 300 12944 -fill #eef -dash {6 4}
.c create line 300 12912 300 12932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1073 to 1077 (Used 1 nobox 1)
# ProcLine[2] stays at 1077 (Used 1 nobox 1)
.c create rectangle 268 12934 332 12954 -fill white -width 0
.c create text 300 12944 -text "go?EAST"
.c create text 70 12968 -fill #eef -text "1079"
.c create line 140 12968 300 12968 -fill #eef -dash {6 4}
.c create line 300 12960 300 12956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1077 to 1079 (Used 1 nobox 1)
# ProcLine[2] stays at 1079 (Used 1 nobox 1)
.c create rectangle 263 12958 337 12978 -fill white -width 0
.c create text 300 12968 -text "go EAST"
.c create text 70 12992 -fill #eef -text "1081"
.c create line 140 12992 300 12992 -fill #eef -dash {6 4}
.c create line 140 12936 140 12980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1075 to 1081 (Used 1 nobox 1)
# ProcLine[1] stays at 1081 (Used 1 nobox 1)
.c create rectangle 108 12982 172 13002 -fill white -width 0
.c create text 140 12992 -text "go!WEST"
.c create line 140 13002 220 13002 -fill darkred -tags mesg -width 2
.c create line 220 13002 300 13002 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13016 -fill #eef -text "1083"
.c create line 140 13016 300 13016 -fill #eef -dash {6 4}
.c create line 300 12984 300 13004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1079 to 1083 (Used 1 nobox 1)
# ProcLine[2] stays at 1083 (Used 1 nobox 1)
.c create rectangle 268 13006 332 13026 -fill white -width 0
.c create text 300 13016 -text "go?WEST"
.c create text 70 13040 -fill #eef -text "1085"
.c create line 140 13040 300 13040 -fill #eef -dash {6 4}
.c create line 300 13032 300 13028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1083 to 1085 (Used 1 nobox 1)
# ProcLine[2] stays at 1085 (Used 1 nobox 1)
.c create rectangle 263 13030 337 13050 -fill white -width 0
.c create text 300 13040 -text "go WEST"
.c create text 70 13064 -fill #eef -text "1087"
.c create line 140 13064 300 13064 -fill #eef -dash {6 4}
.c create line 140 13008 140 13052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1081 to 1087 (Used 1 nobox 1)
# ProcLine[1] stays at 1087 (Used 1 nobox 1)
.c create rectangle 103 13054 177 13074 -fill white -width 0
.c create text 140 13064 -text "go!NORTH"
.c create line 140 13074 220 13074 -fill darkred -tags mesg -width 2
.c create line 220 13074 300 13074 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13088 -fill #eef -text "1089"
.c create line 140 13088 300 13088 -fill #eef -dash {6 4}
.c create line 300 13056 300 13076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1085 to 1089 (Used 1 nobox 1)
# ProcLine[2] stays at 1089 (Used 1 nobox 1)
.c create rectangle 263 13078 337 13098 -fill white -width 0
.c create text 300 13088 -text "go?NORTH"
.c create text 70 13112 -fill #eef -text "1091"
.c create line 140 13112 300 13112 -fill #eef -dash {6 4}
.c create line 300 13104 300 13100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1089 to 1091 (Used 1 nobox 1)
# ProcLine[2] stays at 1091 (Used 1 nobox 1)
.c create rectangle 258 13102 342 13122 -fill white -width 0
.c create text 300 13112 -text "go NORTH"
.c create text 70 13136 -fill #eef -text "1093"
.c create line 140 13136 300 13136 -fill #eef -dash {6 4}
.c create line 140 13080 140 13124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1087 to 1093 (Used 1 nobox 1)
# ProcLine[1] stays at 1093 (Used 1 nobox 1)
.c create rectangle 103 13126 177 13146 -fill white -width 0
.c create text 140 13136 -text "go!NORTH"
.c create line 140 13146 220 13146 -fill darkred -tags mesg -width 2
.c create line 220 13146 300 13146 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13160 -fill #eef -text "1095"
.c create line 140 13160 300 13160 -fill #eef -dash {6 4}
.c create line 300 13128 300 13148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1091 to 1095 (Used 1 nobox 1)
# ProcLine[2] stays at 1095 (Used 1 nobox 1)
.c create rectangle 263 13150 337 13170 -fill white -width 0
.c create text 300 13160 -text "go?NORTH"
.c create text 70 13184 -fill #eef -text "1097"
.c create line 140 13184 300 13184 -fill #eef -dash {6 4}
.c create line 300 13176 300 13172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1095 to 1097 (Used 1 nobox 1)
# ProcLine[2] stays at 1097 (Used 1 nobox 1)
.c create rectangle 258 13174 342 13194 -fill white -width 0
.c create text 300 13184 -text "go NORTH"
.c create text 70 13208 -fill #eef -text "1099"
.c create line 140 13208 300 13208 -fill #eef -dash {6 4}
.c create line 140 13152 140 13196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1093 to 1099 (Used 1 nobox 1)
# ProcLine[1] stays at 1099 (Used 1 nobox 1)
.c create rectangle 108 13198 172 13218 -fill white -width 0
.c create text 140 13208 -text "go!EAST"
.c create line 140 13218 220 13218 -fill darkred -tags mesg -width 2
.c create line 220 13218 300 13218 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13232 -fill #eef -text "1101"
.c create line 140 13232 300 13232 -fill #eef -dash {6 4}
.c create line 300 13200 300 13220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1097 to 1101 (Used 1 nobox 1)
# ProcLine[2] stays at 1101 (Used 1 nobox 1)
.c create rectangle 268 13222 332 13242 -fill white -width 0
.c create text 300 13232 -text "go?EAST"
.c create text 70 13256 -fill #eef -text "1103"
.c create line 140 13256 300 13256 -fill #eef -dash {6 4}
.c create line 300 13248 300 13244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1101 to 1103 (Used 1 nobox 1)
# ProcLine[2] stays at 1103 (Used 1 nobox 1)
.c create rectangle 263 13246 337 13266 -fill white -width 0
.c create text 300 13256 -text "go EAST"
.c create text 70 13280 -fill #eef -text "1105"
.c create line 140 13280 300 13280 -fill #eef -dash {6 4}
.c create line 140 13224 140 13268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1099 to 1105 (Used 1 nobox 1)
# ProcLine[1] stays at 1105 (Used 1 nobox 1)
.c create rectangle 108 13270 172 13290 -fill white -width 0
.c create text 140 13280 -text "go!EAST"
.c create line 140 13290 220 13290 -fill darkred -tags mesg -width 2
.c create line 220 13290 300 13290 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13304 -fill #eef -text "1107"
.c create line 140 13304 300 13304 -fill #eef -dash {6 4}
.c create line 300 13272 300 13292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1103 to 1107 (Used 1 nobox 1)
# ProcLine[2] stays at 1107 (Used 1 nobox 1)
.c create rectangle 268 13294 332 13314 -fill white -width 0
.c create text 300 13304 -text "go?EAST"
.c create text 70 13328 -fill #eef -text "1109"
.c create line 140 13328 300 13328 -fill #eef -dash {6 4}
.c create line 300 13320 300 13316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1107 to 1109 (Used 1 nobox 1)
# ProcLine[2] stays at 1109 (Used 1 nobox 1)
.c create rectangle 263 13318 337 13338 -fill white -width 0
.c create text 300 13328 -text "go EAST"
.c create text 70 13352 -fill #eef -text "1111"
.c create line 140 13352 300 13352 -fill #eef -dash {6 4}
.c create line 140 13296 140 13340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1105 to 1111 (Used 1 nobox 1)
# ProcLine[1] stays at 1111 (Used 1 nobox 1)
.c create rectangle 103 13342 177 13362 -fill white -width 0
.c create text 140 13352 -text "go!NORTH"
.c create line 140 13362 220 13362 -fill darkred -tags mesg -width 2
.c create line 220 13362 300 13362 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13376 -fill #eef -text "1113"
.c create line 140 13376 300 13376 -fill #eef -dash {6 4}
.c create line 300 13344 300 13364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1109 to 1113 (Used 1 nobox 1)
# ProcLine[2] stays at 1113 (Used 1 nobox 1)
.c create rectangle 263 13366 337 13386 -fill white -width 0
.c create text 300 13376 -text "go?NORTH"
.c create text 70 13400 -fill #eef -text "1115"
.c create line 140 13400 300 13400 -fill #eef -dash {6 4}
.c create line 300 13392 300 13388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1113 to 1115 (Used 1 nobox 1)
# ProcLine[2] stays at 1115 (Used 1 nobox 1)
.c create rectangle 258 13390 342 13410 -fill white -width 0
.c create text 300 13400 -text "go NORTH"
.c create text 70 13424 -fill #eef -text "1117"
.c create line 140 13424 300 13424 -fill #eef -dash {6 4}
.c create line 140 13368 140 13412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1111 to 1117 (Used 1 nobox 1)
# ProcLine[1] stays at 1117 (Used 1 nobox 1)
.c create rectangle 108 13414 172 13434 -fill white -width 0
.c create text 140 13424 -text "go!WEST"
.c create line 140 13434 220 13434 -fill darkred -tags mesg -width 2
.c create line 220 13434 300 13434 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13448 -fill #eef -text "1119"
.c create line 140 13448 300 13448 -fill #eef -dash {6 4}
.c create line 300 13416 300 13436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1115 to 1119 (Used 1 nobox 1)
# ProcLine[2] stays at 1119 (Used 1 nobox 1)
.c create rectangle 268 13438 332 13458 -fill white -width 0
.c create text 300 13448 -text "go?WEST"
.c create text 70 13472 -fill #eef -text "1121"
.c create line 140 13472 300 13472 -fill #eef -dash {6 4}
.c create line 300 13464 300 13460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1119 to 1121 (Used 1 nobox 1)
# ProcLine[2] stays at 1121 (Used 1 nobox 1)
.c create rectangle 263 13462 337 13482 -fill white -width 0
.c create text 300 13472 -text "go WEST"
.c create text 70 13496 -fill #eef -text "1123"
.c create line 140 13496 300 13496 -fill #eef -dash {6 4}
.c create line 140 13440 140 13484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1117 to 1123 (Used 1 nobox 1)
# ProcLine[1] stays at 1123 (Used 1 nobox 1)
.c create rectangle 108 13486 172 13506 -fill white -width 0
.c create text 140 13496 -text "go!WEST"
.c create line 140 13506 220 13506 -fill darkred -tags mesg -width 2
.c create line 220 13506 300 13506 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13520 -fill #eef -text "1125"
.c create line 140 13520 300 13520 -fill #eef -dash {6 4}
.c create line 300 13488 300 13508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1121 to 1125 (Used 1 nobox 1)
# ProcLine[2] stays at 1125 (Used 1 nobox 1)
.c create rectangle 268 13510 332 13530 -fill white -width 0
.c create text 300 13520 -text "go?WEST"
.c create text 70 13544 -fill #eef -text "1127"
.c create line 140 13544 300 13544 -fill #eef -dash {6 4}
.c create line 300 13536 300 13532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1125 to 1127 (Used 1 nobox 1)
# ProcLine[2] stays at 1127 (Used 1 nobox 1)
.c create rectangle 263 13534 337 13554 -fill white -width 0
.c create text 300 13544 -text "go WEST"
.c create text 70 13568 -fill #eef -text "1129"
.c create line 140 13568 300 13568 -fill #eef -dash {6 4}
.c create line 140 13512 140 13556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1123 to 1129 (Used 1 nobox 1)
# ProcLine[1] stays at 1129 (Used 1 nobox 1)
.c create rectangle 108 13558 172 13578 -fill white -width 0
.c create text 140 13568 -text "go!WEST"
.c create line 140 13578 220 13578 -fill darkred -tags mesg -width 2
.c create line 220 13578 300 13578 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13592 -fill #eef -text "1131"
.c create line 140 13592 300 13592 -fill #eef -dash {6 4}
.c create line 300 13560 300 13580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1127 to 1131 (Used 1 nobox 1)
# ProcLine[2] stays at 1131 (Used 1 nobox 1)
.c create rectangle 268 13582 332 13602 -fill white -width 0
.c create text 300 13592 -text "go?WEST"
.c create text 70 13616 -fill #eef -text "1133"
.c create line 140 13616 300 13616 -fill #eef -dash {6 4}
.c create line 300 13608 300 13604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1131 to 1133 (Used 1 nobox 1)
# ProcLine[2] stays at 1133 (Used 1 nobox 1)
.c create rectangle 263 13606 337 13626 -fill white -width 0
.c create text 300 13616 -text "go WEST"
.c create text 70 13640 -fill #eef -text "1135"
.c create line 140 13640 300 13640 -fill #eef -dash {6 4}
.c create line 140 13584 140 13628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1129 to 1135 (Used 1 nobox 1)
# ProcLine[1] stays at 1135 (Used 1 nobox 1)
.c create rectangle 103 13630 177 13650 -fill white -width 0
.c create text 140 13640 -text "go!NORTH"
.c create line 140 13650 220 13650 -fill darkred -tags mesg -width 2
.c create line 220 13650 300 13650 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13664 -fill #eef -text "1137"
.c create line 140 13664 300 13664 -fill #eef -dash {6 4}
.c create line 300 13632 300 13652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1133 to 1137 (Used 1 nobox 1)
# ProcLine[2] stays at 1137 (Used 1 nobox 1)
.c create rectangle 263 13654 337 13674 -fill white -width 0
.c create text 300 13664 -text "go?NORTH"
.c create text 70 13688 -fill #eef -text "1139"
.c create line 140 13688 300 13688 -fill #eef -dash {6 4}
.c create line 300 13680 300 13676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1137 to 1139 (Used 1 nobox 1)
# ProcLine[2] stays at 1139 (Used 1 nobox 1)
.c create rectangle 258 13678 342 13698 -fill white -width 0
.c create text 300 13688 -text "go NORTH"
.c create text 70 13712 -fill #eef -text "1141"
.c create line 140 13712 300 13712 -fill #eef -dash {6 4}
.c create line 140 13656 140 13700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1135 to 1141 (Used 1 nobox 1)
# ProcLine[1] stays at 1141 (Used 1 nobox 1)
.c create rectangle 103 13702 177 13722 -fill white -width 0
.c create text 140 13712 -text "go!SOUTH"
.c create line 140 13722 220 13722 -fill darkred -tags mesg -width 2
.c create line 220 13722 300 13722 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13736 -fill #eef -text "1143"
.c create line 140 13736 300 13736 -fill #eef -dash {6 4}
.c create line 300 13704 300 13724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1139 to 1143 (Used 1 nobox 1)
# ProcLine[2] stays at 1143 (Used 1 nobox 1)
.c create rectangle 263 13726 337 13746 -fill white -width 0
.c create text 300 13736 -text "go?SOUTH"
.c create text 70 13760 -fill #eef -text "1145"
.c create line 140 13760 300 13760 -fill #eef -dash {6 4}
.c create line 300 13752 300 13748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1143 to 1145 (Used 1 nobox 1)
# ProcLine[2] stays at 1145 (Used 1 nobox 1)
.c create rectangle 258 13750 342 13770 -fill white -width 0
.c create text 300 13760 -text "go SOUTH"
.c create text 70 13784 -fill #eef -text "1147"
.c create line 140 13784 300 13784 -fill #eef -dash {6 4}
.c create line 140 13728 140 13772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1141 to 1147 (Used 1 nobox 1)
# ProcLine[1] stays at 1147 (Used 1 nobox 1)
.c create rectangle 103 13774 177 13794 -fill white -width 0
.c create text 140 13784 -text "go!SOUTH"
.c create line 140 13794 220 13794 -fill darkred -tags mesg -width 2
.c create line 220 13794 300 13794 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13808 -fill #eef -text "1149"
.c create line 140 13808 300 13808 -fill #eef -dash {6 4}
.c create line 300 13776 300 13796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1145 to 1149 (Used 1 nobox 1)
# ProcLine[2] stays at 1149 (Used 1 nobox 1)
.c create rectangle 263 13798 337 13818 -fill white -width 0
.c create text 300 13808 -text "go?SOUTH"
.c create text 70 13832 -fill #eef -text "1151"
.c create line 140 13832 300 13832 -fill #eef -dash {6 4}
.c create line 300 13824 300 13820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1149 to 1151 (Used 1 nobox 1)
# ProcLine[2] stays at 1151 (Used 1 nobox 1)
.c create rectangle 258 13822 342 13842 -fill white -width 0
.c create text 300 13832 -text "go SOUTH"
.c create text 70 13856 -fill #eef -text "1153"
.c create line 140 13856 300 13856 -fill #eef -dash {6 4}
.c create line 140 13800 140 13844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1147 to 1153 (Used 1 nobox 1)
# ProcLine[1] stays at 1153 (Used 1 nobox 1)
.c create rectangle 103 13846 177 13866 -fill white -width 0
.c create text 140 13856 -text "go!NORTH"
.c create line 140 13866 220 13866 -fill darkred -tags mesg -width 2
.c create line 220 13866 300 13866 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13880 -fill #eef -text "1155"
.c create line 140 13880 300 13880 -fill #eef -dash {6 4}
.c create line 300 13848 300 13868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1151 to 1155 (Used 1 nobox 1)
# ProcLine[2] stays at 1155 (Used 1 nobox 1)
.c create rectangle 263 13870 337 13890 -fill white -width 0
.c create text 300 13880 -text "go?NORTH"
.c create text 70 13904 -fill #eef -text "1157"
.c create line 140 13904 300 13904 -fill #eef -dash {6 4}
.c create line 300 13896 300 13892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1155 to 1157 (Used 1 nobox 1)
# ProcLine[2] stays at 1157 (Used 1 nobox 1)
.c create rectangle 258 13894 342 13914 -fill white -width 0
.c create text 300 13904 -text "go NORTH"
.c create text 70 13928 -fill #eef -text "1159"
.c create line 140 13928 300 13928 -fill #eef -dash {6 4}
.c create line 140 13872 140 13916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1153 to 1159 (Used 1 nobox 1)
# ProcLine[1] stays at 1159 (Used 1 nobox 1)
.c create rectangle 103 13918 177 13938 -fill white -width 0
.c create text 140 13928 -text "go!NORTH"
.c create line 140 13938 220 13938 -fill darkred -tags mesg -width 2
.c create line 220 13938 300 13938 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13952 -fill #eef -text "1161"
.c create line 140 13952 300 13952 -fill #eef -dash {6 4}
.c create line 300 13920 300 13940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1157 to 1161 (Used 1 nobox 1)
# ProcLine[2] stays at 1161 (Used 1 nobox 1)
.c create rectangle 263 13942 337 13962 -fill white -width 0
.c create text 300 13952 -text "go?NORTH"
.c create text 70 13976 -fill #eef -text "1163"
.c create line 140 13976 300 13976 -fill #eef -dash {6 4}
.c create line 300 13968 300 13964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1161 to 1163 (Used 1 nobox 1)
# ProcLine[2] stays at 1163 (Used 1 nobox 1)
.c create rectangle 258 13966 342 13986 -fill white -width 0
.c create text 300 13976 -text "go NORTH"
.c create text 70 14000 -fill #eef -text "1165"
.c create line 140 14000 300 14000 -fill #eef -dash {6 4}
.c create line 140 13944 140 13988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1159 to 1165 (Used 1 nobox 1)
# ProcLine[1] stays at 1165 (Used 1 nobox 1)
.c create rectangle 103 13990 177 14010 -fill white -width 0
.c create text 140 14000 -text "go!SOUTH"
.c create line 140 14010 220 14010 -fill darkred -tags mesg -width 2
.c create line 220 14010 300 14010 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14024 -fill #eef -text "1167"
.c create line 140 14024 300 14024 -fill #eef -dash {6 4}
.c create line 300 13992 300 14012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1163 to 1167 (Used 1 nobox 1)
# ProcLine[2] stays at 1167 (Used 1 nobox 1)
.c create rectangle 263 14014 337 14034 -fill white -width 0
.c create text 300 14024 -text "go?SOUTH"
.c create text 70 14048 -fill #eef -text "1169"
.c create line 140 14048 300 14048 -fill #eef -dash {6 4}
.c create line 300 14040 300 14036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1167 to 1169 (Used 1 nobox 1)
# ProcLine[2] stays at 1169 (Used 1 nobox 1)
.c create rectangle 258 14038 342 14058 -fill white -width 0
.c create text 300 14048 -text "go SOUTH"
.c create text 70 14072 -fill #eef -text "1171"
.c create line 140 14072 300 14072 -fill #eef -dash {6 4}
.c create line 140 14016 140 14060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1165 to 1171 (Used 1 nobox 1)
# ProcLine[1] stays at 1171 (Used 1 nobox 1)
.c create rectangle 108 14062 172 14082 -fill white -width 0
.c create text 140 14072 -text "go!EAST"
.c create line 140 14082 220 14082 -fill darkred -tags mesg -width 2
.c create line 220 14082 300 14082 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14096 -fill #eef -text "1173"
.c create line 140 14096 300 14096 -fill #eef -dash {6 4}
.c create line 300 14064 300 14084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1169 to 1173 (Used 1 nobox 1)
# ProcLine[2] stays at 1173 (Used 1 nobox 1)
.c create rectangle 268 14086 332 14106 -fill white -width 0
.c create text 300 14096 -text "go?EAST"
.c create text 70 14120 -fill #eef -text "1175"
.c create line 140 14120 300 14120 -fill #eef -dash {6 4}
.c create line 300 14112 300 14108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1173 to 1175 (Used 1 nobox 1)
# ProcLine[2] stays at 1175 (Used 1 nobox 1)
.c create rectangle 263 14110 337 14130 -fill white -width 0
.c create text 300 14120 -text "go EAST"
.c create text 70 14144 -fill #eef -text "1177"
.c create line 140 14144 300 14144 -fill #eef -dash {6 4}
.c create line 140 14088 140 14132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1171 to 1177 (Used 1 nobox 1)
# ProcLine[1] stays at 1177 (Used 1 nobox 1)
.c create rectangle 108 14134 172 14154 -fill white -width 0
.c create text 140 14144 -text "go!WEST"
.c create line 140 14154 220 14154 -fill darkred -tags mesg -width 2
.c create line 220 14154 300 14154 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14168 -fill #eef -text "1179"
.c create line 140 14168 300 14168 -fill #eef -dash {6 4}
.c create line 300 14136 300 14156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1175 to 1179 (Used 1 nobox 1)
# ProcLine[2] stays at 1179 (Used 1 nobox 1)
.c create rectangle 268 14158 332 14178 -fill white -width 0
.c create text 300 14168 -text "go?WEST"
.c create text 70 14192 -fill #eef -text "1181"
.c create line 140 14192 300 14192 -fill #eef -dash {6 4}
.c create line 300 14184 300 14180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1179 to 1181 (Used 1 nobox 1)
# ProcLine[2] stays at 1181 (Used 1 nobox 1)
.c create rectangle 263 14182 337 14202 -fill white -width 0
.c create text 300 14192 -text "go WEST"
.c create text 70 14216 -fill #eef -text "1183"
.c create line 140 14216 300 14216 -fill #eef -dash {6 4}
.c create line 140 14160 140 14204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1177 to 1183 (Used 1 nobox 1)
# ProcLine[1] stays at 1183 (Used 1 nobox 1)
.c create rectangle 103 14206 177 14226 -fill white -width 0
.c create text 140 14216 -text "go!NORTH"
.c create line 140 14226 220 14226 -fill darkred -tags mesg -width 2
.c create line 220 14226 300 14226 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14240 -fill #eef -text "1185"
.c create line 140 14240 300 14240 -fill #eef -dash {6 4}
.c create line 300 14208 300 14228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1181 to 1185 (Used 1 nobox 1)
# ProcLine[2] stays at 1185 (Used 1 nobox 1)
.c create rectangle 263 14230 337 14250 -fill white -width 0
.c create text 300 14240 -text "go?NORTH"
.c create text 70 14264 -fill #eef -text "1187"
.c create line 140 14264 300 14264 -fill #eef -dash {6 4}
.c create line 300 14256 300 14252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1185 to 1187 (Used 1 nobox 1)
# ProcLine[2] stays at 1187 (Used 1 nobox 1)
.c create rectangle 258 14254 342 14274 -fill white -width 0
.c create text 300 14264 -text "go NORTH"
.c create text 70 14288 -fill #eef -text "1189"
.c create line 140 14288 300 14288 -fill #eef -dash {6 4}
.c create line 140 14232 140 14276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1183 to 1189 (Used 1 nobox 1)
# ProcLine[1] stays at 1189 (Used 1 nobox 1)
.c create rectangle 108 14278 172 14298 -fill white -width 0
.c create text 140 14288 -text "go!EXIT"
.c create line 140 14298 220 14298 -fill darkred -tags mesg -width 2
.c create line 220 14298 300 14298 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14312 -fill #eef -text "1191"
.c create line 140 14312 300 14312 -fill #eef -dash {6 4}
.c create line 300 14280 300 14300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1187 to 1191 (Used 1 nobox 1)
# ProcLine[2] stays at 1191 (Used 1 nobox 1)
.c create rectangle 268 14302 332 14322 -fill white -width 0
.c create text 300 14312 -text "go?EXIT"
.c create text 70 14336 -fill #eef -text "1193"
.c create line 140 14336 300 14336 -fill #eef -dash {6 4}
.c create line 300 14328 300 14324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1191 to 1193 (Used 1 nobox 1)
# ProcLine[2] stays at 1193 (Used 1 nobox 1)
.c create rectangle 268 14326 332 14346 -fill white -width 0
.c create text 300 14336 -text "go EXIT"
.c lower grid
.c raise mesg
