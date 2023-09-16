#include <stdio.h>

int main(int argc, char **argv) {
    printf("The program name is: %s\n", argv[0]);
    
    // Check if there are additional arguments
    if (argc > 1) {
        printf("Additional arguments:\n");
        for (int i = 1; i < argc; i++) {
            printf("Argument %d: %s\n", i, argv[i]);
        }
    } else {
        printf("No additional arguments provided.\n");
    }

    return 0;
}
