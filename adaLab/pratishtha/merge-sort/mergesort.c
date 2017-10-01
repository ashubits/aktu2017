#include<stdio.h>
 void mergesort(int a[],int i,int j);
void merge(int a[],int i1,int j1,int i2,int j2);
int c=0;
int main()
{

    int a[10000],n,i;
   
    scanf("%d",&n);
   
    
    for(i=0;i<n;i++)
        scanf("%d",&a[i]);
        
    mergesort(a,0,n-1);
    
    printf("\nSorted array is :");  
    for(i=0;i<n;i++)
        printf("\n%d ",a[i]);
  
printf("\n%d",c);
    return 0;
}
 
void mergesort(int a[],int i,int j)
{
    int mid;   
    if(i<j)
    {
        mid=(i+j)/2;
        mergesort(a,i,mid);        
        mergesort(a,mid+1,j);    
        merge(a,i,mid,mid+1,j);    
    }

}
 
void merge(int a[],int i1,int j1,int i2,int j2)
{
    int temp[10000];    
    int i,j,k;
    i=i1;   
    j=i2;    
    k=0;
    
    while(i<=j1 && j<=j2)   
    {
c++;
        if(a[i]<a[j])
{
            temp[k]=a[i];
k++;
i++;
}
        else
{
            temp[k]=a[j];
k++;
j++;
}
    }
    
    while(i<=j1){  
  c++;
        temp[k++]=a[i++];
        }
    while(j<=j2) 
{
 c++;
        temp[k++]=a[j++];
    }    
    for(i=i1,j=0;i<=j2;i++,j++)
        a[i]=temp[j];
c++;
}
