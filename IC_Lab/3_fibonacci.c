#include <stdio.h>
#include <stdlib.h>
int main () {
    int first_term = 1;
    int second_term = 1;  
    int temp;
    int count;
    printf("How many numbers of fibonacci series need to be printed? ");
    scanf(" %d", &count);
    printf("Fibonacci Series: ");
    for (int i = 0; i < count; i++) {
            if (i == 0){
                printf("%d", first_term);
            } else if (i == 1) {
                printf(" %d", second_term);
            } else {
                temp = first_term + second_term;
                first_term = second_term;
                second_term = temp;
                printf(" %d", second_term);
            } 
        }
}