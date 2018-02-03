#include <stdio.h>
#include <stdlib.h>

int countOperations=0;
void insertionSort(int arr[],int n);
int conditionOperator(int, int);
int main()
{
    int arr[15000],n,i;
    scanf("%d",&n);
    printf("No. of Elements are:%d\n",n);
    for(i=0;i<n;i++)
    scanf("%d\n",&arr[i]);

    insertionSort(arr, n);

     printf("Sorted ELements are:\n");

   for(i=0;i<n;i++)
    printf("%d\n",arr[i]);
  
   printf("No. of swaps are:%d",countOperations);
    return 0;
}

void insertionSort(int arr[],int n)
{
    int i,j,key;
    for(i=1;i<n;i++)
    {
        key=arr[i];
        j=i-1;
        while(j>=0 && conditionOperator(arr[j],key))
        {
	    
            arr[j+1]=arr[j];
            j--;
        }
        arr[j+1]=key;
    }
}

int conditionOperator(int a, int b)
{
	countOperations++;
	if(a>b)
	 return 1;
        else
         return 0;
}
