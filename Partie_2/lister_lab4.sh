#!/bin/bash

# Spécifier le chemin du répertoire "lab4"
repertoire="/home/spi-2019-34/Bureau/MU5EE05/Partie_2/lab4
"

# Vérifier si le répertoire "lab4" existe
if [ ! -d "$repertoire" ]; then
    echo "Le répertoire lab4 n'existe pas."
    exit 1
fi

# Utiliser une boucle for pour parcourir les fichiers et répertoires dans lab4
for element in "$repertoire"/*; do
    if [ -d "$element" ]; then
        # Si l'élément est un répertoire, l'afficher
        echo "Répertoire trouvé : $element"
    fi
done
