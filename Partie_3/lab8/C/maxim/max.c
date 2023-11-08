#include "max.h"

void maxim(int t[], int n, int *max) {
    if (n <= 0) {
        // Gestion d'erreur : tableau vide
        *max = 0; // Ou une autre valeur par défaut
        return;
    }

    *max = t[0]; // Initialise max avec la première valeur

    for (int i = 1; i < n; i++) {
        if (t[i] > *max) {
            *max = t[i]; // Met à jour max si une valeur plus grande est trouvée
        }
    }
}