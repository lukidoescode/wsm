#compiler gcc
CC=gcc
CFLAGS=-c -Wall
LIBS=
SRC_DIR=src
INC_DIR=include
OBJ_DIR=obj
BIN_DIR=bin


all: wsm

wsm: wsm.o
	$(CC) wsm.o -o wsm

*.o: *.c
	$(CC) $(CFLAGS) *.c -o $(OBJ_DIR)/*.o

clean:
	rm -rf *o wsm
