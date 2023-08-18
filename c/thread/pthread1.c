// gcc pthread1.c -o pthread1 -lpthread

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void *print_message_function(void *ptr);

int main()
{
	pthread_t thread1;
	pthread_t thread2;

	int ret1;
	int ret2;

	char *message1 = "スレッド1";
	char *message2 = "スレッド2";

	ret1 = pthread_create(&thread1, NULL, print_message_function, (void*)message1);
	ret2 = pthread_create(&thread2, NULL, print_message_function, (void*)message2);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);
	
	printf("thread1 ret: %d\n", ret1);
	printf("thread2 ret: %d\n", ret2);

	return 0;
}

void *print_message_function(void *ptr)
{
	char *message;
	message = (char*)ptr;
	printf("%s\n", message);

	return 0;
}

