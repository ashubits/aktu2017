#include <stdio.h>
#include <stdlib.h>


static int available;
void producerConsumer(int quantity)
{
    int i,temp;
    for(i=0;i<5000000;i++)
    {
        temp=available;
        temp+=quantity;
        available=temp;
    }
}


void main()
{
    producerConsumer(1) ;
    producerConsumer(-1) ;
    printf("The Availability of items are %d\n" ,available) ;
}
