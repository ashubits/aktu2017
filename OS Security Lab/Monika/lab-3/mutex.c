#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

static int available;
pthread_mutex_t lock;
void *producerConsumer(void *quantity)
{
 
  int *quantity1=(int*)quantity;
  long int i,temp;
  for(i=0;i<5000000;i++)
   {
     pthread_mutex_lock(&lock);
     temp=available;
     temp=temp+*quantity1;
     available=temp;
    pthread_mutex_unlock(&lock);
   }
  
}

int main()
{
  int m1=1;
  int m2=-1;
  pthread_t thread1,thread2;
  pthread_create(&thread1,NULL,producerConsumer,&m1);
  pthread_create(&thread2,NULL,producerConsumer,&m2);
  pthread_join(thread1,NULL);
  pthread_join(thread2,NULL);
  printf("\n The Availability of items are %ld",available);
  pthread_mutex_destroy(&lock);
}
