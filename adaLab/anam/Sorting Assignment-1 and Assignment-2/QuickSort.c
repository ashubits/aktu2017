#include <stdio.h>
#include <stdlib.h>
int partition (int[], int, int);
void quickSort (int[], int, int);
void swap(int*, int*);

int countOperations=0;
int main()
{
    int array[20000],sizeOfArray,i;
    scanf("%d",&sizeOfArray);
    for(i=0;i<sizeOfArray;i++)
    {
        scanf("%d",&array[i]);
    }

    quickSort(array, 0, sizeOfArray-1);
     printf("No. of Elements are:%d\n",sizeOfArray);
    printf("Sorted Array is\n");

    for(i=0;i<sizeOfArray;i++)
    {
        printf("%d\n",array[i]);
    }

   printf("No. of swaps are:%d",countOperations);
    return 0;
}

void quickSort(int arr[], int low, int high)
{
    if (low < high)
    {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

int partition (int arr[], int low, int high)
{
    int pivot = arr[high];
    int i = (low - 1); 
 
    for (int j = low; j <= high- 1; j++)
    {
	countOperations++;
        if (arr[j] <= pivot)
        {
            i++;    
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

void swap(int* a, int* b)
{
    int t = *a;
    *a = *b;
    *b = t;
}
