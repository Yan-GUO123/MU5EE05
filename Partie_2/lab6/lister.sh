#!/bin/bash

# Chemin du répertoire à lister
directory="/home/spi-2019-34/Bureau/MU5EE05/Partie_2/lab4
"

# Vérifiez si le répertoire existe
if [ -d "$directory" ]; then
  # Parcourez les éléments dans le répertoire
  for item in "$directory"/*; do
    # Vérifiez si l'élément est un répertoire
    if [ -d "$item" ]; then
      echo "Dossier trouvé : $item"
    fi
  done
else
  echo "Le répertoire $directory n'existe pas."
fi

