# automatically generated makefile by ../scripts/create-make

CFLAGS=-Wall -g -O2 -std=gnu99 -I./include -L./lib

LIBS=-lpthread -litsky -lrt


all: main 
	
clean:
	rm -f lib/libitsky.a  

main: main.c lib/libitsky.a include/itskylib.h
	gcc $(CFLAGS) main.c $(LIBS) -o main


lib/libitsky.a: lib/fsort.o lib/fsort-metrics.o lib/isort.o lib/ternary-hsort.o lib/lib.o lib/msort.o lib/transmission-protocols.o lib/psort.o lib/hsort.o lib/sort_common.o
	ar crs lib/libitsky.a lib/fsort.o lib/fsort-metrics.o lib/isort.o lib/ternary-hsort.o lib/lib.o lib/msort.o lib/transmission-protocols.o lib/psort.o lib/hsort.o lib/sort_common.o
