#include <stdio.h>
void producerConsumer ( int quantity )
 {
	 int i, temp;
	 for ( i =0; i<50000; i++)
	 {
	 	temp= available; // a v a i l a b l e i s a s t a t i c g l o b a l v a r i a b l e
	 	temp=temp+quantity;
		 available=temp ;
	 }
 }

static int available; // i n i t i a l l y a v a i l a b i l i t y i s z e r o
 void main()
{
 producerConsumer(1);
 producerConsumer(-1);
 printf ("\n The Availability of item sare %d" , available) ;
}
