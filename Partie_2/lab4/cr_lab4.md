ls -lart : afficher des fiches de l'ancien jusqu'à maintenant

ls-lS --block-size=kB : affiche la taille des fichiers

cat nom de fichier : lire le fichier

more nom de fichier : lire et controle à la main

tail -n 20 nom de fichier : affiche des 20 dernières lignes

grep mot clé nom de fichier : chercher le mot clé

find . -type f -exec grep -1 "mot clé" {} + : chercher le mot clé dans tous les fichiers

grep -ri "mot clé" : chercher le mot clé ne considère pas majusclin ou minusculin dans tous les fichiers

mv .lightbult lightbult : modifier la forme de fichier

rm -rf .git : supprimer .git

pwd : le chemin actuel

déplacer le sardar3.txt à lab3 :
D'abord trouver le chemin de lab3 : sudo find / -type d -name "lab3"
Après remove : mv sardar3.txt /chemin/vers/lab3/

rm nom de fichier : supprimer le fichier

ln -s /sardar/* : créer un symbolique

chmod -r sardar1.txt : permision de lecture seule
chmod +w sardar1.txt : permission écriture 
chmod +r sardar1.txt : permission de lecture

tar cvf lab4.tar lab4  : créer une archive du lab4 est nommé lab4.tar
bunzip2 -z lab4.tar : compresser
tar tvf lab4.tar.bz2 : lister les fichiers d'une archive
mv lab4.tar.bz2 lab4 : déplacer lab4.tar.bz2 à lab4


