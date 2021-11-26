VFLAGS = --track-origins=yes --leak-check=full --show-leak-kinds=all
CFLAGS = -std=gnu11 -g -Wall -Wextra -O2

all: build

build: src/Linux/*.c src/MacOS/*.c
	gcc src/Linux/*.c $(CFLAGS) -o server.out
	gcc src/MacOS/*.c $(CFLAGS) -o client.out

client: build
	./build/server.out

server: build
	./build/client.out 