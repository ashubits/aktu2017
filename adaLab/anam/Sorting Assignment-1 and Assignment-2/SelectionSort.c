#include <stdio.h>
#include <stdlib.h>

int main()
{
  int a[15000],i,j,temp,countOperations=0,n;
  scanf("%d",&n);
  printf("No. of Elements are:%d\n",n);
  for(i=0;i<n;i++)
    scanf("%d\n",&a[i]);

  for(i=0;i<n;i++)
  {
        for(j=i+1;j<n;j++)
        {
		countOperations++;
            if(a[i]>=a[j])
            {
		
                temp=a[i];
                a[i]=a[j];
                a[j]=temp;
            }

        }
   }

   printf("Sorted ELements are:\n");

   for(i=0;i<n;i++)
    printf("%d\n",a[i]);
  
   printf("No. of swaps are:%d",countOperations);
   
}
