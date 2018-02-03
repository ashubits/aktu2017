#include<stdio.h>

int fact(int num)
{  
int n=num*fact(num-1);
return n;  
}      

void main()  
{  
int n;  
printf("Enter the number\n"); 
scanf("%d",&n);
int res = fact(n);  
printf("The factorial is=%d",res);  
}  

  

