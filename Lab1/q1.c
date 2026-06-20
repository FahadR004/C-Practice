// Write a C program that accepts an employee's ID, total worked hours in a month and the amount received per hour. Print the ID and salary (with two decimal places) of the employee for a particular month

#include <stdio.h>

int main() {

    int empID;
    int worked_hrs;
    int sal_amt_per_hr;

    printf("Enter your employee id: ");
    scanf("%d", &empID);
    printf("Enter your total worked hours in a month: ");
    scanf("%d", &worked_hrs);
    printf("Enter your salary per hour: ");
    scanf("%d", &sal_amt_per_hr);
    

    printf("ID: %d, Total Salary: %d Rs.", empID, worked_hrs*sal_amt_per_hr);

    return 0;
}