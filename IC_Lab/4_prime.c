#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
int main () {
    int n;
    bool flag = false;
    printf("Enter a number to see if it's prime or not? ");
    scanf(" %d", &n);
    if (n == 0 || n == 1) {
        printf("%d is not a prime number", n);
    } else {
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                flag = true;
                break;
            } 
        }
        if (!flag) {
            printf("%d is a prime number", n);
        } else {
            printf("%d is not a prime number", n);
        }
    }

}