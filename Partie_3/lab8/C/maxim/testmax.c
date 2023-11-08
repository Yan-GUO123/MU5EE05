#include <stdio.h>
#include "max.h"

int main() {
    int tableau[] = {2, 5, 7, 2, 9};
    int n = sizeof(tableau) / sizeof(tableau[0]);
    int max;

    maxim(tableau, n, &max);

    printf("La valeur maximale dans le tableau est : %d\n", max);

    return 0;
}