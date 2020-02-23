CFLAGS=-std=c11 -g -static -fno-common
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)


chibicc: $(OBJS)
		$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): chibi.h

test: chibicc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean