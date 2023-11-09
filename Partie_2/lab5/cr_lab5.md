cat sardar/* > sardar_power.txt : combiner tous les fichiers de sardar à sardar_power.txt

wc sardar_power.txt : compter nombre de mots, nombre de caractères et nombre de ligne

grep -i "singh" sardar_power.txt : afficher le mot singh majuscule et minuscule

rm : supprimer

grep -i "singh" sardar/ | wc -l : compter des lignes

grep -ri "santa" sardar/ | grep -ri "singh" sardar: | wc -l : afficher des lignes santa et singh indifférent de majuscule et minuscule

grep -irE "santa.*singh | singh.*santa" sardar/ | grep -i -v -E -c "banta" : afficher sans banta

find lab5 -type f -name "*.txt" : chercher .txt dans lab5

diff noyau.v1 noyau.v2 : différent entre deux fichiers

sudo apt install tkdiff : installer tkdiff

diff : afficher différent en text
tkdiff : afficher différent en graphique avec couleur plus visible que diff

diff -u noyau.v1 noyau.v2 > update.patch : stocker la différence entre deux fichiers dans un nouveau fichier update.patch

patch noyau.v1 < update.patch : appliquer update.patch sur le noyau.v1







