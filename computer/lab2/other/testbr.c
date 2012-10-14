#include <stdio.h>

int main(int argc, char const *argv[])
{

	unsigned long nn, m, n, i, j;
	nn = 8;
	n = nn << 1;
	j = 0;

	for (i = 0;i < n;i += 2) { //This is the bit-reversal section of the routine.
		printf("---\n");
		printf("%lu, %lu\n", i, j);
		if (j > i) {
			printf("%lu <-> %lu\n", j, i);
			printf("%lu <-> %lu\n", j+1, i+1);
		}

		m = nn;

		while (m >= 2 && j >= m) {
			j -= m;
			m >>= 1;
		}

		j += m;
	}

	printf("%lu", j);

	return 0;
}