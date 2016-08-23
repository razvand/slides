CFLAGS = -Wall

.PHONY: all clean

all: walk_matrix_column_major walk_matrix_row_major

walk_matrix_column_major: walk_matrix_column_major.o

walk_matrix_column_major.o: walk_matrix_column_major.c

walk_matrix_row_major: walk_matrix_row_major.o

walk_matrix_row_major.o: walk_matrix_row_major.c

clean:
	-rm -f *.o
	-rm -f walk_matrix_column_major walk_matrix_row_major
