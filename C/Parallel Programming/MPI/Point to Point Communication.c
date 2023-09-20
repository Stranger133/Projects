#include <stdio.h>
#include <mpi.h>
#include <stdlib.h>
#define tag 100

int main(int argc, char* argv[]){
	
	int rank, size, recval;
	int maxval , minval, maxrank, minrank;
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	
	int val = (93 * (rank + 4) + 43) % 27;
	MPI_Status status;
	
	if(rank == 0){
		maxval = val;
		minval = val;
		for(int i = 0; i < size; i++){
			MPI_Recv(&recval, 1, MPI_INT, i, tag, MPI_COMM_WORLD, &status);
			
			if(recval < minval){
				minval = recval;
				minrank = status.MPI_SOURCE;
			}
			if(recval > maxval){
				maxval = recval;
				maxrank = status.MPI_SOURCE;
			}
		}
		printf("Me process of rank %d, I have the min value, v = %d\n", minrank, minval);
		printf("Me process of rank %d, I have the max value, v = %d\n", maxrank, maxval);
		
	}
	else{
		MPI_Send(&val, 1, MPI_INT, 0, tag, MPI_COMM_WORLD);
	}
	MPI_Finalize();
	return 0;
}