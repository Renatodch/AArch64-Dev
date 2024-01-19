
#include <stdio.h>
#include "e1.h"

int i,j,k;
uint8_t var=3;
int n1=1,n2=2;

func1 calcula1;

void calcula(int x){
 int xx = x*x;	
 printf("x a la x es: %d\n", xx);
 return;
}

int main(void){

i = 10;
calcula1 = calcula;
calcula1(n2);

if(n1>n2)var=1;
else var = 2;

while(i){
 printf("el valor de i fuera del if: %d\n",i);
 if(!(--i)){
  printf("el valor de i:  %d\n",i);
  break;
 }

}
return 0;

}
