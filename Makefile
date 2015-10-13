CC=g++
CFLAGS= -g -Wall -Werror

all: proxy

proxy: proxy.cpp
	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.c 
	$(CC) $(CFLAGS) -o proxy.o -c proxy.cpp
	$(CC) $(CFLAGS) -o proxy proxy_parse.o proxy.o 
	

clean:
	rm -f proxy *.o

tar:
	tar -cvzf ass1.tgz proxy README Makefile proxy_parse.c proxy_parse.h
