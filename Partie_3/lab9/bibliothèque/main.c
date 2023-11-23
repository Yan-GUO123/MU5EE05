#include <stdio.h>
#include <math.h>
#include "max.h"
#include "min.h"
#include "var.h"


int main() {
    // Création et initialisation du tableau
    int tableau[7] = {13, 12, 5, 1, 19, 13, 17};

    // Appel de la fonction maxim pour calculer le maximum
    int maximum;
    maxim(tableau, 7, &maximum);

    // Appel de la fonction minim pour calculer le minimum
    int minimum;
    minim(tableau, 7, &minimum);

    // Appel de la fonction variance pour calculer le variation
    float result_variance;

    variance(tableau, 7, &result_variance);

    // Affichage des résultats
    printf("Le maximum dans le tableau est : %d\n", maximum);
    printf("Le minimum dans le tableau est : %d\n", minimum);
    printf("La variance du tableau est : %f\n", result_variance);
    

    // Utiliser ceil et floor pour arrondir
    float variance_arrondie_ceil = ceil(result_variance);
    float variance_arrondie_floor = floor(result_variance);

    printf("Variance arrondie vers le haut (ceil) : %f\n", variance_arrondie_ceil);
    printf("Variance arrondie vers le bas (floor) : %f\n", variance_arrondie_floor);

    return 0;
}