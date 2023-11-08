#include <stdio.h>
#include "var.h"

int main() {
    int tableau[] = {2, 5, 7, 2, 9};
    int n = sizeof(tableau) / sizeof(tableau[0]);
    float var;

    variance(tableau, n, &var);

    printf("Variance : %f\n", var);

    return 0;
}