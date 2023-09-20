#include <stdio.h>
#include <omp.h>
int main()
{
	size_t nb_steps = 100000000;
	double pi,term;
	double sum;
	double step = 1./(double)nb_steps;
	int tid, size;
	size_t i;
	long ref, end;
	#pragma omp parallel num_threads(8)
	{
		ref = omp_get_wtime();
		for (i = 0; i < nb_steps; i++) {
			term = (i + 0.5) * step;
			sum += 4. / (1. + term * term);
		}	
		tid = omp_get_thread_num();
		size = omp_get_num_threads();
		printf("This is Thread %d of %d Threads\n", tid, size);
		#pragma omp critical
		{		
			pi = step * sum;
		}

		end = omp_get_wtime();
	}
	
	printf("pi = %.10f\n", pi);
	printf("Execution time: %ld\n", (end-ref));
	return 0;
}

