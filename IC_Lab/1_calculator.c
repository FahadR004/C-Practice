#include <stdio.h>
#include <stdlib.h>
int main () {
    char operator;
    int num1, num2, result;
    int flag = 1;
    while (flag) {
            
        printf("This is a calculator. Please enter one of the  operations (+, -, *, /): ");
        scanf(" %c", &operator); // the space tells scanf to skip any leading whitespace chars

        printf("Enter number 1: ");
        scanf("%d", &num1);

        printf("Enter number 2: ");
        scanf("%d", &num2);

        switch (operator)
        {
        case '+':
            printf("%d + %d: %d \n", num1, num2, num1 + num2);
            break;

        case '-':
            printf("%d - %d: %d \n", num1, num2, num1 - num2);
            break;
        
        case '*':
            printf("%d * %d: %d \n", num1, num2, num1 * num2);
            break;
        
        case '/':
            printf("%d / %d: %d \n", num1, num2, num1 / num2);
            break;

        case 'e':
            printf("Ending program.");
            flag = 0;
            break;
        
        default:
            printf("Incorrect operator. Ending program.");
            flag = 0;
            break;
        }
    }
    
}