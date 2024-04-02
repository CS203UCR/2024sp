#include <stdio.h>

char hello_string[] = "Hello, world!\n";

int main()
{
    printf("%s",hello_string);
    printf("Where is the string? %p\n", hello_string);
    return 0;
}