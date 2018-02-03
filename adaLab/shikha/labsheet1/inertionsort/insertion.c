#include <stdio.h>
#include<stdlib.h>
 
int main()
{
  int n, i, d, t;
  int a[1000000];
  unsigned long long int swap=0;
  scanf("%d", &n);
 
 
  for (i = 0; i< n; i++) 
  {
    scanf("%d", &a[i]);
  }
 
  for (i = 1 ; i <= n - 1; i++) {
    d = i;
 
    while ( d > 0 ) 
{
 swap++;
if(a[d] < a[d-1]){
      t  = a[d];
      a[d]  = a[d-1];
      a[d-1] = t;
    
}
 d--;
    }
  }
 
  printf("Sorted list in ascending order:\n");
 
  for (i = 0; i <= n - 1; i++) {
    printf("%d\n", a[i]);
  }
 printf("%llu",swap);
  return 0;
}
