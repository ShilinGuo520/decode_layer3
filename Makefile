CC = gcc
CFLAGS = -I./inc
SRC = src

FILE = $(SRC)/common.o $(SRC)/decode.o $(SRC)/huffman.o $(SRC)/layer3.o


decode:$(FILE)
	$(CC) -o $@ $^ -lm

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(SRC)/*.o
	rm -f decode

