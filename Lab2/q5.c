#include <stdio.h>
#include <stdlib.h>

// int main () {
//     printf("RUNNING PROGRAM\n");
//     int arr[4] = {1, 4, 4, 5};
//     int current_size = 0;
//     int *arr_ptr = (int*) malloc(current_size * sizeof(int));

//     if (!arr_ptr) {
//         printf("Error: Memory allocation failed.\\n");
//         return 1;
//     }

//     for (int i = 0; i < 4; i++) {
//        int number = arr[i];
//        int count = 0;
//        for (int j = 0; j < current_size; j++) {
//             if (arr[i] == arr_ptr[j]) {
//                 count++;
//             }
//        }
//        if (count == 0) {
//           current_size++;
//           int *temp_ptr = realloc(arr_ptr, current_size * sizeof(int));

//           if (!temp_ptr) {
//             printf("Error: Memory reallocation failed.\\n");
//             free(arr_ptr);
//             exit(1);
//           }

//           arr_ptr = temp_ptr;
//           arr_ptr[current_size-1] = arr[i];

//        }
//     }
//     printf("Unique elements of the array are: \n");
//     for (int i = 0; i < current_size; i++) {
//         printf("%d ", arr_ptr[i]);
//     }

//     free(arr_ptr);
//     return 0;

// }


// int main(int argc, char const *argv[])
// {
//     int arr[] = {1,3,4,4,5,6,12,5,2,5};
//     int n = sizeof(arr)/sizeof(arr[0]);
//     printf("Original array: ");
//     for (int i = 0; i < n; i++) {
//         printf("%d ", arr[i]);
//     }
//     printf("\n");
//     printf("Unique Array: ");
//     for (int i = 0; i < n; i++) {
//         int seen = 0;

//         for (int j = 0; j < i; j++) {
//             if (arr[i] == arr[j]) {
//                 seen = 1;
//                 break;
//             }
//         }
//         if (!seen) {
//             printf("%d ", arr[i]);
//         }
            
//     }
//     return 0;
// }

int main() {
    int arr[6] = {1, 2, 3, 4, 4, 5};
    int n = 6;
    int *unique = (int*) malloc(n * sizeof(int));

    if (!unique) {
        printf("Error: Memory allocation failed.\n");
        return 1;
    }

    int unique_count = 0;

    for (int i = 0; i < n; i++) {
        int found = 0;
        for (int j = 0; j < unique_count; j++) {
            if (arr[i] == unique[j]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            unique[unique_count] = arr[i];  // write to correct index
            unique_count++;
        }
    }

    printf("Unique elements: ");
    for (int i = 0; i < unique_count; i++) {
        printf("%d ", unique[i]);
    }
    printf("\n");

    free(unique);
    return 0;
}
