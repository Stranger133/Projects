# include < stdio .h >
# include < stdlib .h >
# include < mpi.h >
int main (int argc , char * argv [])
{
	int max , min , rank ;
	MPI_Init (& argc , & argv ) ;
	MPI_Comm_rank ( MPI_COMM_WORLD , & rank ) ;
	int val = (93 * ( rank + 4) + 43) % 27;
	MPI_Allreduce (& val , & max , 1 , MPI_INT , MPI_MAX , MPI_COMM_WORLD ) ;
	MPI_Allreduce (& val , & min , 1 , MPI_INT , MPI_MIN , MPI_COMM_WORLD ) ;
	if( val == max ) {
		printf ("Me process of rank %d, I have the max value , v = %d", rank , val ) ;
	}
	if( val == min ) {
		printf ("Me process of rank %d, I have the min value , v = %d", rank , val ) ;
	}
	MPI_Finalize () ;
	return 0;
}