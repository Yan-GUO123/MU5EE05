#include <stdio.h>
#include "min.h" // Incluez le fichier d'en-tête

int main() {
    int array[] = {2, 5, 7, 2, 9};
    int n = sizeof(array) / sizeof(array[0]);
    int min;

    minim(array, n, &min);

    printf("Le minimum du tableau est : %d\n", min);

    return 0;
}