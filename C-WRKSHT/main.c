#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    char *prompt = "(ESHELL) $";
    char *lineptr;
    size_t n = 0;


    printf("%s", prompt);
    getline(&lineptr, &n, stdin);

    free(lineptr);
    return 0;
}
