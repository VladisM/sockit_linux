CC=arm-linux-gnueabihf-gcc
CFLAGS=-Wall -O2
OUT=fir_test

all: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $(OUT)

clean:
	rm -f $(OUT)
