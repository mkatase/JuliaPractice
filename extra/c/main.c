#include <stdio.h>

#include "calc.h"
#include "display.h"
#include "hello.h"

void main(void)
{
    display();
    printf("-----\n");
    printf("%d\n", calc(3));
    printf("-----\n");
    printf("%s\n", hello("Momo"));
}
