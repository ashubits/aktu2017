#include <stdio.h>
 
int main()
{
   int a[10000], n, c, d, p, swap;
long int l=0;
 
   scanf("%d", &n);
 
   printf("Enter %d integers\n", n);
 
   for ( c = 0 ; c < n ; c++ )
      scanf("%d", &a[c]);
 
   for ( c = 0 ; c < ( n - 1 ) ; c++ )
   {
      p = c;
 
      for ( d = c + 1 ; d < n ; d++ )
      {
         if ( a[p] > a[d] )
            p = d;
l++;
      }
      if ( p != c )
      {
         swap = a[c];
         a[c] = a[p];
         a[p] = swap;
l++;
      }
   }
 
   printf("Sorted list in ascending order:\n");
 
   for ( c = 0 ; c < n ; c++ )
      printf("%d\n", a[c]);
 
printf("\n%ld",l);
   return 0;
}
