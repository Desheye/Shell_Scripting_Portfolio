#include <stdio.h>
#include <stdlib.h>

// Include the global environment variable
extern char** environ;

int main() {
    // Iterate through the environment variables
    for (int i = 0; environ[i] != NULL; i++) {
        printf("%s\n", environ[i]);
    }

    return 0;
}
