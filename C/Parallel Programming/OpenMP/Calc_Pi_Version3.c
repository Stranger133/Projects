#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
	size_t nb_steps = 100000000;
	double pi, term;
	double sum = 0.0;
	double step = 1. / (double)nb_steps;
	int tid, size;
	size_t i;
	double ref, end;
	ref = omp_get_wtime();
	#pragma omp parallel num_threads(8)
	{
	#pragma omp parallel for reduction(+:sum) schedule(dynamic) //schedule(guided)
		for (i = 0; i < nb_steps; i++) {
			term = (i + 0.5) * step;
			sum += 4. / (1. + term * term);
		}
		tid = omp_get_thread_num();
		size = omp_get_num_threads();
		printf("This is Thread %d of %d Threads\n", tid, size);
	}
		end = omp_get_wtime();
	pi = step * sum;
	printf("pi = %.10f\n", pi);
	printf("Execution time: %f\n", (end - ref));
	return 0;
	}
