
#include <omp.h>
#include <stdio.h>

void hello(){
	#pragma omp parallel
	printf("%d\n", omp_get_num_threads());

}
