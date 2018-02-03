#include <stdio.h>
#include <stdlib.h>
int getCount(int arr[], int n)
{
  int count = 0;
  for (int i = 0; i < n - 1; i++)
    for (int j = i+1; j < n; j++)
      if (arr[i] > arr[j])
        count++;

  return count;
}


int main(int argv, char** args)
{
  int arr[1000] ;
  int n = sizeof(arr)/sizeof(arr[0]);
  printf(" Number of inversions are %d \n", getCount(arr, n));
  return 0;
}
