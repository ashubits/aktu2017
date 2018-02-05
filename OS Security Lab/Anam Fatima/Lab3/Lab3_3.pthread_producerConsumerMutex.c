#include <stdio.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

static int available;
pthread_mutex_t lock;
void *producerConsumer(void *vargp)
{
	
	int *quantity = (int *)vargp;
	long temp,i;
	
	for(i=0;i<5000000;i++)
    	{
		pthread_mutex_lock(&lock);
			temp=available;
			temp+=*quantity;
			available=temp;
		pthread_mutex_unlock(&lock);
    	}
	
	//sleep(100);
}

int main()
{
	int produce=1,consume=-1;
	pthread_t tid1,tid2;
	if (pthread_mutex_init(&lock, NULL) != 0)
    	{
		printf("\n mutex init has failed\n");
		return 1;
    	}
	
	pthread_create(&tid1,NULL, producerConsumer,(void *)&(produce));
	pthread_create(&tid2,NULL, producerConsumer,(void *)&(consume));
	
	pthread_join(tid1,NULL);
	pthread_join(tid2,NULL);

	printf("The Availability of items are %d\n" ,available) ;
	pthread_mutex_destroy(&lock);

}
