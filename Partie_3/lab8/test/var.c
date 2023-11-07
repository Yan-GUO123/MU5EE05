#include "var.h"

void variance(int t[], int n, float *var) {
    if (n <= 0) {
        *var = 0.0; // Retourne 0 si le tableau est vide
        return;
    }

    // Calcule la moyenne
    int sum = 0;
    for (int i = 0; i < n; i++) {
        sum += t[i];
    }
    float mean = (float)sum / n;

    // Calcule la somme des carrés des écarts à la moyenne
    float sumOfSquaredDifferences = 0.0;
    for (int i = 0; i < n; i++) {
        float difference = (float)t[i] - mean;
        sumOfSquaredDifferences += difference * difference;
    }

    // Calcule la variance
    *var = sumOfSquaredDifferences / (n-1);
}
