#include<stdio.h>
#include<string.h>
#include<pthread.h>
#include<stdlib.h>
#include<unistd.h>

static int available;
pthread_mutex_t lock;
void *producerConsumer(void *quantity)
{
pthread_mutex_lock(&lock);
int *quantity1=(int*)quantity;
int i,temp;
for(i=0;i<5000000;i++)
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
pthread_t thread1,thread2;
pthread_create(&thread1,NULL,producerConsumer,&x);
pthread_create(&thread2,NULL,producerConsumer,&y);
pthread_join(thread1,NULL);
pthread_join(thread2,NULL);
printf("\n The Availability of items are %d",available);
 pthread_mutex_destroy(&lock);
}
