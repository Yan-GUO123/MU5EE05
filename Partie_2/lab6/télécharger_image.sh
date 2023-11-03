#!/bin/bash

# Répertoire de destination pour enregistrer les images
destination_folder="xkcd_images"

# Créez le répertoire de destination s'il n'existe pas
mkdir -p "$destination_folder"

# Boucle pour télécharger les 10 premières images
for i in {1..10}; do
  # URL de la page xkcd correspondante
  url="http://xkcd.com/$i"

  # Télécharge la page web et extrait les lignes contenant "hotlinking"
  page_content=$(curl -s "$url" | grep -E 'hotlinking')

  if [ -n "$page_content" ]; then
    # Utilise awk pour extraire l'URL de l'image
    image_url=$(echo "$page_content" | awk -F'":"' '{print $2}' | sed 's/"//g')

    if [ -n "$image_url" ]; then
      # Nom de l'image
      image_name="xkcd_$i.png"
      image_path="$destination_folder/$image_name"

      # Télécharge l'image (utilise curl)
      curl -s -o "$image_path" "$image_url"

      # Affiche le nom de l'image téléchargée
      echo "Téléchargement de l'image $i : $image_name"
    else
      echo "Impossible de trouver l'URL de l'image $i."
    fi
  else
    echo "Impossible de trouver l'URL de l'image $i."
  fi
done

# Affiche les images avec eog (utilise eog pour afficher)
eog image_name

  

