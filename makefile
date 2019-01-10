CC=gcc
SL= -I ./project
app: main.o
	$(CC) main.o -o app $(SL)
main.o: main.c func1.h func2.h
	$(CC) -c main.c $(SL)

clean:
	rm -f *.o
	rm app
