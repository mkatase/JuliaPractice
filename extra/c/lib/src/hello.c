#include <stdio.h>
#include <stdlib.h>
#include "hello.h"

char *hello(char *s)
{
    char *o;

    o = malloc(sizeof(char *));

    sprintf(o, "Hello %s World !!", s);

    return o;
}
