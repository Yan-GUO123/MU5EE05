CC = gcc
CFLAGS = -Wall
LIBS = -lm
OBJ = max.o min.o var.O test.o
CC_OPTIONS = 

all: My-binaire

max.o: max.c max.h
	$(CC) $(CFLAGS) -c $<

min.o: min.c min.h
	$(CC) $(CFLAGS) -c $<

var.o: var.c var.h
	$(CC) $(CFLAGS) -c $<

test.o: test.c
	$(CC) $(CFLAGS) -c $<

My-binaire: max.o min.o var.o test.o
	$(CC) $^ -o $@ $(LIBS)

install: My-binaire
	cp My-binaire $(HOME)/My-binaire

clean:
	rm -f *.o My-binaire
