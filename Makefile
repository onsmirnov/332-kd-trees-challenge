CC = gcc
CFLAGS = -std=c89 -Wall -g -O3 -DUSEMALLOCNOTALLOCA -DUSEOWNSQRT -pthread

.PHONY: all
all: kdtreetest

kdtreetest: kdtreetest.c kdtree.c kdtree.h
	${CC} ${CFLAGS} -o kdtreetest kdtreetest.c kdtree.c

.PHONY: clean
clean:
	rm -f kdtreetest
