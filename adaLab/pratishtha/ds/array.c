#include<stdio.h>
void main()
{
int a[1000],n,i,j;
printf("enter the number of element of the array");
scanf("%d",&n);
for(i=0;i<n;i++)
{
scanf("%d",&a[i]);
}
for(i=0;i<n;i++)
{
printf("%d\t",a[i]);
}
}
