# Author: Lukas Wagner
# Created Jan 8, 2014
# compiler: gcc
CC=gcc
CFLAGS=-c -Wall
LIBS=
SRC_DIR=src
INC_DIR=include
OBJ_DIR=obj
BIN_DIR=bin


all: wsm

wsm: *.o $(BIN_DIR)
	$(CC) $(wildcard $(OBJ_DIR)/*.o) -o $(BIN_DIR)/wsm

*.o: $(SRC_DIR)/*.c $(OBJ_DIR)
	$(CC) $(CFLAGS) $(SRC_DIR)/*.c -o $(OBJ_DIR)/*.o

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

$(BIN_DIR):
	mkdir $(BIN_DIR)

clean:
	rm -rf obj bin
