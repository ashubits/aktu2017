#include <pthread.h>
#include <stdio.h>

static long int available;

void *ProducerConsumer(void *quantity)
{


int *quan=(int*)quantity;

long int i,temp;

for(i=0;i<5000000;i++)
{
temp=available;
temp=temp+*quan;
available=temp;
}

}

int main()
{
int x=1,y=-1;
pthread_t thread;
pthread_t thread1;
pthread_create(&thread, NULL, ProducerConsumer, &x);
pthread_create(&thread1, NULL, ProducerConsumer, &y);
pthread_join(thread1, NULL);
pthread_join(thread, NULL);
printf("\n The Availability of item sare=%ld", available);
return 0;
}
