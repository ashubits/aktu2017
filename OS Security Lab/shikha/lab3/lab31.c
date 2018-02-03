// thread

#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<unistd.h>

static int available;

void *poducerConsumer(void *quantity)
{
  
 int i,temp;
 int*q = (int*) quantity;
  for(i=0;i<5000000;i++)
   {
     temp = available;
     temp = temp +*q;
     available = temp; 
    }
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
printf("\n the availability of items are: %d",available); 
}
