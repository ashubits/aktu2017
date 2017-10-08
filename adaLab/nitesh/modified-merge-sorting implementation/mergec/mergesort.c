#include<stdlib.h>
#include<stdio.h>
 int counter=0;
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
    { counter++;
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
counter++;
        arr[k] = L[i];
        i++;
        k++;
    }
 
    while (j < n2)
    {
counter++;
        arr[k] = R[j];
        j++;
        k++;
    }
}
 

void mergeSort(int arr[], int l, int r)
{
    if (l < r)
    {
     
        int m = (l+r)/2;
        mergeSort(arr, l, m);
        mergeSort(arr, m+1, r);
        merge(arr, l, m, r);
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
printf("\n%d",counter);
    return 0;
}

