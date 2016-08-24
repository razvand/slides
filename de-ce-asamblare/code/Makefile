CFLAGS = -Wall

.PHONY: all clean

all: walk_matrix_by_column walk_matrix_by_row

walk_matrix_by_column: walk_matrix_by_column.o

walk_matrix_by_column.o: walk_matrix_by_column.c

walk_matrix_by_row: walk_matrix_by_row.o

walk_matrix_by_row.o: walk_matrix_by_row.c

clean:
	-rm -f *.o
	-rm -f walk_matrix_by_column walk_matrix_by_row
