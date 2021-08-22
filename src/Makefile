CFLAGS = -c -Wall -g -I. -I../include
LDFLAGS = -L. -lmylib -L../lib

CFLAGS += $(shell pkg-config --cflags libmodbus)
LDFLAGS += $(shell pkg-config --libs libmodbus)

all: readModbus

readModbus: readModbus.o
	$(CC) -o $@ $< $(LDFLAGS) 

clean:
	rm *.o
	rm *.a
	rm readModbus
	
%.o: %.c
	$(CC) $(CFLAGS) $<

