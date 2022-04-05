#include <stdio.h>

int main()
{
	unsigned long int counter = 9000000000;
	unsigned long int summ = 0;
	for(unsigned long int cx = 0; cx <= counter; cx++)
	{
		summ += cx;
	}
	printf("The sum form 0 to %ld is %ld \n", counter, summ);
	return 0;
}
