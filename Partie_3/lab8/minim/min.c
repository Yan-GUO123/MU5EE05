#include "min.h"

void minim(int t[], int n, int *min) {
    if (n <= 0) {
        // Gestion d'erreur pour un tableau vide
        *min=0;
        return;
    }

    *min = t[0]; // Initialisez min avec la première valeur du tableau

    for (int i = 1; i < n; i++) {
        if (t[i] < *min) {
            *min = t[i]; // Mettez à jour min si une valeur plus petite est trouvée
        }
    }
}