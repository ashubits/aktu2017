#include <stdio.h>
#include <stdlib.h>
void main()
{
   // write random nos. to file
    int noOfElements,i;

    scanf("%d",&noOfElements);
    printf("%d\n",noOfElements);
    for (i = 0; i < noOfElements; i++)
    {
        printf("%d\n", rand()%noOfElements);
    }
}
