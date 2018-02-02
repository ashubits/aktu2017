#include<stdio.h>
#include<pthread.h>

static int available;

void *producerConsumer(void* pquantity){
	int temp; long i;
	int *quantity = (int *)pquantity;
	int int_quant = *quantity;
	for(i = 0; i < 5000000; i++){
		temp = available;
		temp = temp + int_quant;
		available = temp;
	}
}

void main(){
	
	pthread_t tid1, tid2;
	int val1 = 1, val2 = -1;
	//creating two threads; one for producer and another for consumer


	//printf("Hi");
	pthread_create(&tid1, NULL, producerConsumer, (void *)&val1);
	pthread_create(&tid2, NULL, producerConsumer, (void *)&val2);
	pthread_join(tid1, NULL);
	pthread_join(tid2, NULL);

	//pthread_exit(NULL);
	printf("\n The Availability of items are %d", available);
}
