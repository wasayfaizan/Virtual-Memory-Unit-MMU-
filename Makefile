# makefile for Virtual Memeory Unit (MMU)
#
# usage: make mmu 

CC=gcc
CFLAGS=-Wall

clean:
	rm -rf *.o
	rm -rf mmu
	rm -rf mmu2
	

mmu: 
	$(CC) $(CFLAGS) -o mmu mmu.c 
	
mmu2: 
	$(CC) $(CFLAGS) -o mmu2 mmu2.c 
	

