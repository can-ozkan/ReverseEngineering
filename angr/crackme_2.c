#include <stdio.h>
#include <string.h>
#include <unistd.h>

int check1(const char *pw) {
    return strncmp(pw, "angr", 4) == 0;
}

int check2(const char *pw) {
    return pw[4] == 'b' && pw[5] == 'c' && pw[6] == 'd';
}

int check3(const char *pw) {
    int sum = pw[7] + pw[8] + pw[9];
    return sum == 300;
}

int main() {
    char input[20] = {0}; // make sure it's zeroed

    printf("Enter the password: ");
    ssize_t len = read(0, input, 10); // Read exactly 10 bytes, no newline

    if (len != 10) {
        printf("Try again.\n");
        return 1;
    }

    if (check1(input) && check2(input) && check3(input)) {
        printf("Success!\n");
    } else {
        printf("Try again.\n");
    }
    return 0;
}
