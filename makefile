# make makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: GNU make
all : show.exe

show.exe : show.obj show.def show.res  
	gcc -Zomf -L. -lmmpm2 show.obj show.def show.res -o show.exe
	wrc show.res

show.obj : show.c show.h 
	gcc -Wall -Zomf -c -O2 show.c -o show.obj

show.res : show.rc show.ico 
	wrc -r show.rc

clean :
	rm -rf *exe *res *obj *dll *lib
