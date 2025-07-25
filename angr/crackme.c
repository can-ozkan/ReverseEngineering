#include <stdio.h>
#include <string.h>

int main() {
    char input[20];

    printf("Enter the password: ");
    fgets(input, sizeof(input), stdin);

    // Remove trailing newline, if any
    input[strcspn(input, "\n")] = 0;

    if(strcmp(input, "angrRocks!") == 0) {
        printf("Success!\n");
    } else {
        printf("Try again.\n");
    }

    return 0;
}
