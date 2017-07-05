all: sum_test

sum_test: test.o main.o
        gcc -o sum_test test.o main.o
sum,o: test.c test.h
        gcc -c -o test.o test.o

main.o: main.c test.h
        gcc -c -o main.o main.c
clean:
        rm *.o sum_test
