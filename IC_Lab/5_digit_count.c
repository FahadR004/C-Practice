#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int main () {
    int n;

    printf("Enter a number: ");
    scanf("%d", &n);
    int count = 0;
    while (true) {
        n /= 10;
        count++;
        if (n == 0) {
            break;
        }
    }
    printf("Number of digits: %d", count);
    return 0;
}