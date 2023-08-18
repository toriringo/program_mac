#include <stdio.h>
#include <pthread.h>

void *func1(){
	int i = 0;
	for(i = 0; i < 200; ++i){
		printf("o");
	}
	return NULL;
}

void *func2(){
	int i = 0;
	for(i = 0; i < 200; ++i){
		printf("-");
	}
	return NULL;
}

int main()
{
	pthread_t th1;
	pthread_t th2;

	pthread_create(&th1, NULL, &func1, NULL);
	pthread_create(&th2, NULL, &func2, NULL);

	pthread_join(th1, NULL);
	pthread_join(th2, NULL);

	printf("\n");

	return 0;
}

