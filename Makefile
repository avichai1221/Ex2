CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_MYBANK=myBank.o
FLAGS= -Wall -g
all: mybanks mains
mybanks: $(OBJECTS_MYBANK)
	$(AR) rcs libmyBank.a $(OBJECTS_MYBANK)

mains: $(OBJECTS_MAIN) libmyBank.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyBank.a



	
myBank: myBank.c myBank.h
	$(CC) $(FLAGS) -c myBank.c 
main: main.c myBank.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all mybanks mains

clean:
	rm -f *.o *.a mains


