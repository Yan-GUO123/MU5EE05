#!/bin/bash

# Vérifiez s'il y a exactement deux arguments passés au script
if [ $# -ne 2 ]; then
    echo "Erreur : Ce script nécessite exactement deux arguments numériques."
    exit 1
fi

# Récupérez les deux arguments passés au script
nombre1="$1"
nombre2="$2"

# Vérifiez si les deux arguments sont des nombres
if ! [[ "$nombre1" =~ ^[0-9]+$ ]] || ! [[ "$nombre2" =~ ^[0-9]+$ ]]; then
    echo "Erreur : Les arguments doivent être des nombres entiers."
    exit 1
fi

# Comparez les deux nombres et affichez un message approprié
if [ "$1" -lt "$2" ]; then
    echo "Le nombre $1 est inférieur au nombre $nombre2."
elif [ "$1" -gt "$2" ]; then
    echo "Le nombre $1 est supérieur au nombre $2."
else
    echo "Le nombre $1 est égal au nombre $2".
fi

