
#include <stdio.h>
#include "e3.h"

unsigned long i=0,j=1,k;

int main(void){
register volatile long res;

asm volatile ("mrs %0,cntfrq_el0":"=r"(res));

printf("cntfrq_el0: %li \n",res);

asm volatile ("mrs %0,cntpct_el0":"=r"(res));

printf("cntpct_el0: %li \n",res);

return 0;

}


