#include<stdio.h>

static int available;

void producerConsumer(int quantity){
	int i, temp;
	for(i = 0; i < 50000; i++){
		temp = available;
		temp = temp + quantity;
		available = temp;
	}
}

void main(){
	producerConsumer(1);
	producerConsumer(-1);
	printf("\n The Availability of items are %d", available);
}
