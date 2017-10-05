#include<stdio.h>
int coun=0;
void quicksort(int number[10000],int first,int last){
   int i, j, pivot, temp;

   if(first<last){
      pivot=first;
      i=first;
      j=last;

      while(i<j){
         while(number[i]<=number[pivot]&&i<last)
      {      
coun++;
i++;
       }
  while(number[j]>number[pivot])
{
coun++;
            j--;
}
         if(i<j)
{
coun++;
            temp=number[i];
            number[i]=number[j];
            number[j]=temp;
         }
      }

      temp=number[pivot];
      number[pivot]=number[j];
      number[j]=temp;
      quicksort(number,first,j-1);
      quicksort(number,j+1,last);

   }
}

int main(){
   int i, count, number[10000];

   scanf("%d",&count);

   for(i=0;i<count;i++)
      scanf("\n%d",&number[i]);

   quicksort(number,0,count-1);

   printf("Order of Sorted elements: \n");
   for(i=0;i<count;i++)
      printf(" \n%d",number[i]);
printf("\n%d\n",coun);

   return 0;
}
