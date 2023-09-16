#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#define _XOPEN_SOURCE 600

int main(){
    //fork();
    pid_t pid = fork();
    printf("IMGN-DRGN : %d\n ", getpid());
    return 0;
}
