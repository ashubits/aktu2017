#include<stdio.h>
#include<pthread.h>
static long int available;
pthread_mutex_t lock;
void *producerConsumer(void *quantity)
{
pthread_mutex_lock(&lock);

  int *quantity1= (int*)quantity;
  long int i,temp;
  for(i =0;i<50000;i++)
   {
   temp=available;
   temp=temp+*quantity1;
   available=temp;
   }
pthread_mutex_unlock(&lock);
}
void main()
{
 int x=1;
 int y=-1;
 pthread_t a1,a2;
 
 pthread_create(&a1,NULL,producerConsumer,&x);
 pthread_create(&a2,NULL,producerConsumer,&y);
 pthread_join(a1,NULL);
 pthread_join(a2,NULL);
pthread_mutex_destroy(&lock);

  printf("\n The Availability of items are %ld", available);
}

 
