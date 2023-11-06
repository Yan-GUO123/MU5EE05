#!/bin/bash

# Répertoire de destination pour enregistrer les images
destination_folder="xkcd_images"

# Créez le répertoire de destination s'il n'existe pas
mkdir -p "$destination_folder"

# Nombre d'images à télécharger
num_images=10

# Boucle pour télécharger les 10 premières images
for i in $(seq 1 $num_images); do
  # URL de la page xkcd correspondante
  url="http://xkcd.com/$i"

  var=$(wget -q -O - "$url" | grep -i hotlinking | grep -o 'https.*.jpg"' | grep -o 'https.*.jpg') 
  echo $var
  if [ -n "$var" ]; then
    # Nom de l'image
    image_name="xkcd_$i.jpg"
    image_path="$destination_folder/$image_name"

    # Télécharge l'image
    wget -q "$var" -O "$image_path"

    # Affiche le nom de l'image téléchargée
    echo "Téléchargement de l'image $i : $image_name"
  else
    echo "Impossible de trouver l'URL de l'image $i."
  fi
done


# Affiche les images avec eog
eog "$destination_folder"/"xkcd_1.jpg"
