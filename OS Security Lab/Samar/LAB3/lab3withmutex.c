#include <pthread.h>
#include <stdio.h>

static long int available;
pthread_mutex_t lock;
void *ProducerConsumer(void *quantity)
{

int *quan=(int*)quantity;

long int i,temp;
pthread_mutex_lock(&lock);

for(i=0;i<5000000;i++)
{
temp=available;
temp=temp+*quan;
available=temp;
}
pthread_mutex_unlock(&lock);
}

int main()
{
int x=1,y=-1;
pthread_t thread0;
pthread_t thread1;
pthread_create(&thread0, NULL, ProducerConsumer, &x);
pthread_create(&thread1, NULL, ProducerConsumer, &y);
pthread_join(thread1, NULL);
pthread_join(thread0, NULL);

pthread_mutex_destroy(&lock);
printf("\n The Availability of item sare=%ld", available);
return 0;
}
