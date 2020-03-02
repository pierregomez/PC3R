all : 
	spin -a laby.pml
	gcc -o pan pan.c
	./pan -D > laby.dot
	dot -Tpdf laby.dot -o laby.dot.pdf
clean :
	rm -rf *.tcl
	rm -rf *.trail
	rm -rf laby.dot 
	rm -rf pan*