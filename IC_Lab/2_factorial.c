#include <stdio.h>
#include <stdlib.h>
// Factorial using loop
int main () {
    int loop_count;
    int result = 1;
    printf("Enter a number to print factorial of: ");
    scanf(" %d", &loop_count);
    for (int i = 1; i <= loop_count; i++) {
        result = result*i;
    }
    printf("Result of factorial is: %d", result);
}