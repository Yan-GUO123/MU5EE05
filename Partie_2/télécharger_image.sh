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

  # Télécharge la page web
  page_content=$(curl -s "$url")

  # Utilise awk pour extraire l'URL de l'image
  image_url=$(echo "$page_content" | awk -F "Image URL (for hotlinking/embedding): " 'NF>1{print $2; exit}')

  if [ -n "$image_url" ]; then
    # Nom de l'image
    image_name="xkcd_$i.png"
    image_path="$destination_folder/$image_name"

    # Télécharge l'image
    curl -s -o "$image_path" "$image_url"

    # Affiche le nom de l'image téléchargée
    echo "Téléchargement de l'image $i : $image_name"
  else
    echo "Impossible de trouver l'URL de l'image $i."
  fi
done

# Affiche les images avec eog
eog "$destination_folder"/*