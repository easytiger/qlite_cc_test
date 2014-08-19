
all: sqlite
	g++ s3ct.cpp -o s3ct sqlite3.o -ldl -lpthread

sqlite: sqlite3.c
	gcc -c  sqlite3.c -o sqlite3.o

clean:
	-rm -f sqlite3.o sqlite3.o
