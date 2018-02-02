#include <stdio.h>
#include <pthread.h>
static long int available;
pthread_mutex_t lock; 
void *producerConsumer( void *quantity )
 {
pthread_mutex_lock(&lock);
	 
	int *quantity1=(int*)quantity;
long int i,temp;	 
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
 pthread_t pth1,pth2;
 pthread_create(&pth1, NULL, producerConsumer, &x);
 pthread_create(&pth2, NULL, producerConsumer, &y);
 pthread_join(pth1, NULL);
 pthread_join(pth2, NULL);


pthread_mutex_destroy(&lock);
printf ("\n The Availability of item sare %ld" , available) ;
}

