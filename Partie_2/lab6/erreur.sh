#!/bin/bash

# Vérifiez si l'argument du chemin du répertoire est fourni
if [ $# -eq 0 ]; then
  echo "Usage: $0 chemin_du_repertoire"
  exit 1
fi

# Récupérez le chemin du répertoire à partir des arguments
directory="$1"

# Vérifiez si le répertoire existe et est un répertoire valide
if [ -d "$directory" ]; then
  # Utilisez "cd" pour vous déplacer dans le répertoire spécifié
  cd "$directory" || exit 1

  # Utilisez la commande "find" pour rechercher tous les répertoires dans le répertoire actuel
  # -maxdepth 1 signifie de ne pas descendre dans les sous-répertoires
  # -type d signifie de rechercher uniquement les répertoires
  find . -maxdepth 1 -type d
else
  echo "Le chemin $directory n'est pas un répertoire valide."
fi
