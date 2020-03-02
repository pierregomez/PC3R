all : 
	spin -a feu.pml
	gcc -o pan pan.c
	./pan -D > feu.dot
	dot -Tpdf feu.dot -o feu.dot.pdf
clean :
	rm -rf *.tcl
	rm -rf *.trail
	rm -rf feu.dot 
	rm -rf pan*