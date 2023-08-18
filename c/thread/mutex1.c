// gcc mutex1.c -o mutex1 -lpthread
// mutexでロックすればcounterは2になるが
// ロックしないとcounterは1になる場合がある

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void *function(void *ptr);

pthread_mutex_t mutex1 = PTHREAD_MUTEX_INITIALIZER;
int counter = 0;

int main()
{
	pthread_t thread1;
	pthread_t thread2;

	int ret1;
	int ret2;

	char *message1 = "スレッド1";
	char *message2 = "スレッド2";

	ret1 = pthread_create(&thread1, NULL, function, NULL);
	ret2 = pthread_create(&thread2, NULL, function, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);
	
	return 0;
}

// counterをインクリメントする
void *function()
{
	pthread_mutex_lock(&mutex1);
	++counter;
	printf("counter: %d\n", counter);
	pthread_mutex_unlock(&mutex1);

	return 0;
}

