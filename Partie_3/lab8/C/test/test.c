#include <stdio.h>
#include "max.h"
#include "min.h"
#include "var.h"

int main() {
    int tableau[] = {4, 9, 10, 11, 12, 15, 12, 9, 0, 30};
    int n = sizeof(tableau) / sizeof(tableau[0]);
    int max, min;
    float var;

    // Définissez un point d'arrêt ici (F9)

    minim(tableau, n, &min);
    maxim(tableau,  n, &max);
    variance(tableau, n, &var);

    printf("Maximum : %d\n", max);
    printf("Minimum : %d\n", min);
    printf("Variance : %f\n", var);

    return 0;
}