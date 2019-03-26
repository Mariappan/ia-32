#include <stdio.h>

void unknown_func(char *p)
{
    int a,b,c = 0;
    char ch[16];

    while (*p && *p != 'e'){
        c++;
        p++;
    }
    printf("%d\n", c);
    return;
}
