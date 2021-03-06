// remove race condition using lock output is zero

#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<unistd.h>

static int available;
pthread_mutex_t lock;

void *poducerConsumer(void *quantity)
{
  
 int i,temp;
 int*q = (int*) quantity;

  for(i=0;i<5000000;i++)
   {
pthread_mutex_lock(&lock);
     temp = available;
     temp = temp +*q;
     available = temp; 
    
 pthread_mutex_unlock(&lock);
}
return NULL;
}


void main()
{
int x = 1;
int y = -1;
pthread_t tid1;
pthread_t tid2;

pthread_create(&tid1,NULL,poducerConsumer,&x);
pthread_create(&tid2,NULL,poducerConsumer,&y);

pthread_join(tid1,NULL);
pthread_join(tid2,NULL);
pthread_mutex_destroy(&lock);
printf("\n the availability of items are: %d",available); 
}
