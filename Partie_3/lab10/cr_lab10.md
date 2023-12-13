Q2 : 
gcc -c -fPIC max.c -o max.o
gcc -c -fPIC min.c -o min.o
gcc -c -fPIC var.c -o var.o  

# c : Cette option indique au compilateur de générer des fichiers objet (.o) sans effectuer l'édition de lien.

# fPIC : Cette option indique au compilateur de générer du code indépendant de la position.

# o : Cette option permet de spécifier le nom du fichier de sortie.

Q3 : 
gcc -shared -o libobjet.so max.o min.o var.o

shared : Cette option indique au compilateur de générer une bibliothèque partagée (.so).

o : Cette option permet de spécifier le nom du fichier de sortie, dans ce cas, libobjet.so.

Q4 :
sudo mv libobjet.so /opt/lib/

déplacer libobjet.so vers opt/lib

ls /opt/lib : vérifier 

Q5 : 
gcc -o executable main.c -I/opt/include -L/opt/lib -lobjet -lm

Q6 : 
rien à trouver

Q7 : 
echo $LD_LIBRARY_PATH
# affichier des contenus

Q8 : 
export LD_LIBRARY_PATH=/opt/lib:$LD_LIBRARY_PATH
# ajoute le chemin /opt/lib au début de la variable LD_LIBRARY_PATH

Q9 : gcc -o executable main.c -I/opt/include -L/opt/lib -lobjet -lm    
./executable

Q10 : ldd executable
# afficher la liste des bibliothèques dynamiques utilisées par le programme


Q11 : 
locate libm.so
# Localiser

Q12 : 
le vrai nom de la BU : readelf -d /usr/lib/x86_64-linux-gnu/libm.so.6

0x000000000000000e (SONAME)             Bibliothèque soname: [libm.so.6]

Q13 : 
sudo cp /opt/lib/libobjet.so /usr/lib/ 
copier le BU à /usr/lib/ 

sudo chmod a-w /usr/lib/libobjet.so
# enleve le droit écriture

Q14 :
sudo ldconfig
# utilisée pour mettre à jour le cache du chargeur dynamique ld.so

Q15 :
sudo ldconfig -p | grep libobjet.so
# Vérifier que la bibliotèque est bien reconnu par le système

Q16 :
unset LD_LIBRARY_PATH
# supprimer a variable d’environnement LD_LIBRARY_PATH

Q17 :
gcc -o mon_programme main.c -lobjet -lm
# compiler le programme avec le nom de BU no le chemin

Q18 :
./mon_programme
# executer mon programme