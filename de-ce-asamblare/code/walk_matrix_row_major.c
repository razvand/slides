#include <stdio.h>

#define NUM_ROWS	8192
#define NUM_COLUMNS	8192

static unsigned long m[NUM_ROWS][NUM_COLUMNS];

int main(void)
{
	size_t i, j;

	for (i = 0; i < NUM_ROWS; i++)
		for (j = 0; j < NUM_COLUMNS; j++)
			/* Dumb computation just to prove a point. */
			m[i][j] = i + j + (i ^ j);

	return 0;
}
