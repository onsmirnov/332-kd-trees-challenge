CC = gcc
CFLAGS = -pthread -std=c99 -Wall -g -O3 -march=skylake -flto -DUSEMALLOCNOTALLOCA -DUSEOWNSQRT

.PHONY: all
all: kdtreetest

kdtreetest: kdtreetest.c kdtree.c thpool.c kdtree.h
	${CC} ${CFLAGS} -o kdtreetest kdtreetest.c kdtree.c thpool.c

.PHONY: clean
clean:
	rm -f kdtreetest
