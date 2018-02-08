#include <stdio.h>
#include <pthread.h>
static long int available; 
void *producerConsumer( void *quant )
 {
  int *quant1=(int*)quant;
  long int i,temp;	 
  for ( i =0; i<5000000; i++)
	 {
	 	temp= available; 
	 	temp=temp+*quant1;
		 available=temp ;
	 } 
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
  printf ("\n The Availability of item sare %ld" , available) ;
 }

