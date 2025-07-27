#include <stdio.h>
#include <string.h>

int check(const char *pw) {
    char expected[9];
    for (int i = 0; i < 8; i++) {
        expected[i] = (i + 1) * 10 + 'A'; // dynamically generated
    }
    expected[8] = 0;

    return strncmp(pw, expected, 8) == 0;
}

int main() {
    char input[32] = {0};

    fflush(stdout);
    printf("Enter the password: ");
    fflush(stdout);
    
    int len = read(0, input, 8);

    if (len != 8) {
        printf("Wrong length!\n");
        return 1;
    }

    if (check(input)) {
        printf("Success!\n");
    } else {
        printf("Try again.\n");
    }
    return 0;
}
