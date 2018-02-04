#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

static int available;
void *producerConsumer(void *quantity)
{
  int *quan1=(int*)quantity;
  long int i,temp;
  for(i=0;i<5000000;i++)
   {
     temp=available;
     temp=temp+*quan1;
     available=temp;
   }
}

int main()
{
  int a1=1;
  int a2=-1;
  pthread_t t1,t2;
  pthread_create(&t1,NULL,producerConsumer,&a1);
  pthread_create(&t2,NULL,producerConsumer,&a2);
  pthread_join(t1,NULL);
  pthread_join(t2,NULL);
  printf("\n The Availability of items are %ld",available);
}
