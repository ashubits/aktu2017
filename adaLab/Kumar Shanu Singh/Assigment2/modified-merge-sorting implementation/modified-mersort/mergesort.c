#include<stdlib.h>
#include<stdio.h>
 int counter1=0,c2=0;
 void insertion(int arr[],int l,int r)
{
int k;
for (k = l ; k <= r ; k++) {
  int  d = k;
 while ( d > l ) 
{
c2++;
if(arr[d]<arr[d-1])
{
      int t  = arr[d];
      arr[d]  = arr[d-1];
      arr[d-1] = t;
    }
 d--;
    }
  }
printf("insertion count at every step=%d",c2);
}
void merge(int arr[], int l, int m, int r)
{
    int i, j, k;
    int n1 = m - l + 1;
    int n2 =  r - m;
    int L[n1], R[n2];
 
    for (i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[m + 1+ j];
 
    
    i = 0; 
    j = 0; 
    k = l; 
    while (i < n1 && j < n2)
    { 
counter1++;
        if (L[i] <= R[j])
        {
            arr[k] = L[i];
            i++;
        }
        else
        {
            arr[k] = R[j];
            j++;
        }
        k++;
    }
 
    while (i < n1)
    {
counter1++;
        arr[k] = L[i];
        i++;
        k++;
    }
 
    while (j < n2)
    {
counter1++;
        arr[k] = R[j];
        j++;
        k++;
    }
}
 

void mergeSort(int arr[], int l, int r)
{
int t=r-l;

 if(t<6)
{
printf("\nt=%d l=%d r=%d\n",t,l,r);
insertion(arr,l,r);
}
else
{
    if (l < r)
    {
        int m = (l+r)/2;
        mergeSort(arr, l, m);
        mergeSort(arr, m+1, r);
        merge(arr, l, m, r);
 }
   }
}


void printArray(int A[], int size)
{
    int i;
    for (i=0; i < size; i++)
        printf("\n%d", A[i]);
    printf("\n");

}
 

int main()
{
    int arr[1000],n,b;
    scanf("%d",&n);
 for(b=0;b<n;b++)
{
scanf("%d",&arr[b]);
} 
 
    mergeSort(arr, 0, n - 1);
 
    printf("\nSorted array is \n");
    printArray(arr, n);
printf("\nmerge count %d\n insertion count %d",counter1,c2);
    return 0;
}

