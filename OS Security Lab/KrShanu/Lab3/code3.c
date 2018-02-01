//to remove critical section, insert mutext lock.
 
#include <stdio.h>
#include <pthread.h>
static long int available;
pthread_mutex_t lock; 
void *producerConsumer ( void *quantity )
 {
pthread_mutex_lock(&lock);
	 long int i, temp;
	int *quantity1=(int*) quantity;
	 for ( i =0; i<5000000; i++)
	 {
	 	temp= available; 
	 	temp=temp+*quantity1;
		 available=temp ;
	 }
pthread_mutex_unlock(&lock); 
}


 void main()
{
 int x= 1, n;
 int y= -1;
 pthread_t tid1;
 pthread_t tid2;
 pthread_create(&tid1, NULL, producerConsumer, &x);
 pthread_create(&tid2, NULL, producerConsumer, &y);
 pthread_join(tid1, NULL);
 pthread_join(tid2, NULL);


pthread_mutex_destroy(&lock);
printf ("\n The Availability of item sare %ld" , available) ;
}

