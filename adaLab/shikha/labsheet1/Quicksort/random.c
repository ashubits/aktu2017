#include<stdio.h>
#include<stdlib.h>
void main()
{


int a,i;
int n;
scanf("%d",&n);
printf("%d\n",n);
for(i=0;i<n;i++)
{

a=rand()%n;
printf("\n%d",a);

}



}
