#include <stdio.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

static int available;
void *producerConsumer(void *vargp)
{
	
	int *quantity = (int *)vargp;
	long temp,i;
	
	for(i=0;i<5000000;i++)
    	{
		temp=available;
		temp+=*quantity;
		available=temp;
    	}
	
}

int main()
{
	int produce=1,consume=-1;
	pthread_t tid1,tid2;

	pthread_create(&tid1,NULL, producerConsumer,(void *)&(produce));
	pthread_create(&tid2,NULL, producerConsumer,(void *)&(consume));
	
	pthread_join(tid1,NULL);
	pthread_join(tid2,NULL);

	printf("The Availability of items are %d\n" ,available) ;
	

}

