CFLAGS=-std=c11 -g -static

ccdolphin: ccdolphin.c

test: ccdolphin
	./test.sh

clean:
	rm -f ccdolphin *.o *~ tmp*

.PHONY: test clean
