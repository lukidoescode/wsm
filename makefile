#compiler gcc
CC=gcc
CFLAGS=-c -Wall
LIBS=


all: wsm

wsm: wsm.o
	$(CC) wsm.o -o wsm

wsm.o: wsm.c
	$(CC) $(CFLAGS) wsm.c

clean:
	rm -rf *o wsm
