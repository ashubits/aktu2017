#include <stdio.h>
#include <stdlib.h>

int merge(int a[],int start,int m,int end);
int mergeSort(int a[],int start,int end);
int countOperations=0;
int main()
{
    int array[20000],sizeOfArray,i;
    scanf("%d",&sizeOfArray);
    for(i=0;i<sizeOfArray;i++)
    {
        scanf("%d",&array[i]);
    }

    mergeSort(array,0,sizeOfArray-1);
  printf("No. of Elements are:%d\n",sizeOfArray);
    printf("Sorted Array is\n");

    for(i=0;i<sizeOfArray;i++)
    {
        printf("%d\n",array[i]);
    }

   printf("No. of swaps are:%d",countOperations);
    return 0;
}

int mergeSort(int a[],int start,int end)
{
    int m;
    if(start<end)
    {
        m=(start+end)/2;
        mergeSort(a,start,m);
        mergeSort(a,m+1,end);
        merge(a,start,m,end);
    }

}

int merge(int a[],int start,int mid,int end)
{
    int i,j,k;
    int n1=mid-start+1;
    int n2=end-mid;

    int L[n1],R[n2];

    for(i=0;i<n1;i++)
    {
        L[i]=a[start+i];
    }

    for(i=0;i<n2;i++)
    {
        R[i]=a[mid+1+i];
    }

    i=0;
    j=0;
    k=start;
    while(i<n1 && j<n2)
    {

	countOperations++;
        if(L[i]<=R[j])
        {
            a[k]=L[i];
            i++;
        }
        else
        {
            a[k]=R[j];
            j++;
        }
        k++;
    }

    while(i<n1)
    {
        a[k]=L[i];
        k++;
        i++;
        countOperations++;
    }

    while(j<n2)
    {
        a[k]=R[j];
        k++;
        j++;
        countOperations++;
    }
}
