#include "min.h"

void minim(int t[], int n, int *min) {
    if (n <= 0) {
        // Gestion d'erreur : tableau vide
        *min = 0; // Ou une autre valeur par défaut
        return;
    }

    *min = t[0]; // Initialise max avec la première valeur

    for (int i = 1; i < n; i++) {
        if (t[i] < *min) {
            *min = t[i]; // Met à jour max si une valeur plus grande est trouvée
        }
    }
}