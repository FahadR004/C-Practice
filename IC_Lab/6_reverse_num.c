#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int main () {
    int n, remainder;
    int result = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    int original = n;
    while (n != 0) {
        remainder = n % 10;
        result = result * 10 + remainder;
        n /= 10;
    }
    if (original % 10 == 0) {
        printf("Reversed number: ");
        while (original % 10 == 0) {
            printf("0");
            original /= 10;
        }
        printf("%d", result);
    } else {
        printf("Reversed number: %d", result);
    }
    return 0;
}