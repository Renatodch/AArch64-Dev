#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int k;
char string0[] = {"Hola soy string0"};
char string1[3][30] = {"Hola soy string 1","hey"};
char s = 'a';
char *ps1[3];
char *string2[3]={"e1","e2","e3"};
char **ps2;
char *ps3;

int main(int argc, char ** argv){
 
 ps3 = (char *)malloc(14);
 
 memset(ps3,0x31,14);

 for(k=0 ;k<14;){
  *(ps3+k) = 0x41 + k;
  k++;
  printf("el valor de k es : %d y *(ps3+k) : %c\n",k-1,*(ps3+k-1));
 } 
 
 ps2 = string2;

 ps1[0] = string1[0];
 ps1[1] = &s;

 printf("el valor de argv[1] es : %s y de argc: %d \n" ,argv[1],argc);

 printf("el valor de ps1 es: %s y de ps2 es: %s\n",ps1[1],ps2[2]);

 printf("el valor de ps3 es: %s \n", ps3 );

 return 0;

}


