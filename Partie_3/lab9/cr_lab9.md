1. ar rcs liboutils.a max.o min.o  : 
# créer une bibliothèque statique liboutils.a avec les fichiers objes. 
ar : créer une archive liboutils.a    
r : remplacer ou ajouter des fichiers à l'archive, 
c : créer une archive. 
s : créer un index symbolyquepour l'archive

2. ar t liboutils.a :
vérification de la liste des fichiers objets dans l'archive : ar t liboutils.a

3. ranlib liboutils.a :
La commande ranlib est utilisée pour créer un index pour une archive statique. 
L'index est une table des symboles qui permet de rechercher des symboles (fonctions ou variables) dans l'archive plus rapide. 

4. gcc main.c max.c min.c -o calcul :
# compiler le programme, nommer notre pragramme "calcul"

5. ./calcul :
exécuter le programme

6. sudo mkdir /opt/include
sudo mkdir /opt/lib :
# créent deux répertoires, "include" et "lib", dans le répertoire "/opt"

7. ls /opt :
vérifier que les répertoires ont été créés avec succè

8. sudo mv max.h min.h /opt/include
sudo mv liboutils.a /opt/lib :
déplacer max.h min.h à include et liboutils.a à lib
sudo : on utilise pour avoir l'adaministration

9. ls /opt/include
ls /opt/lib :
vérifier si c'est bien déplacé des fichiers

10. rm *.o max.c min.c :
supprimer les fichiers : .o max.c min.c


11. gcc main.c -I/opt/include -L/opt/lib -loutils -o binaire

    -I/opt/include : Indique à gcc d'inclure le répertoire /opt/include lors de la recherche des fichiers d'en-tête.
    -L/opt/lib : Indique à gcc d'inclure le répertoire /opt/lib lors de la recherche des bibliothèques.
    -loutils : Spécifie que le linker doit lier avec la bibliothèque liboutils.a.
    -o binaire : Spécifie le nom du fichier binaire résultant.

12. ./binaire :
# exécutez le programme

13. gcc -c var.c -o var.o :
créer le fichier var.o

14. ar rcs liboutils.a var.o :
Ajouter var.o à liboutils.a

15. ar t liboutils.a
lister des fichiers contenus dans liboutils.a

16. ranlib liboutils.a :
mettre à jour l'index  de la bibliothèque liboutils.a

17. nm liboutils.a :
Utiliser nm pour lister les symboles dans la bibliothèque 

18. gcc main.c var.c -I/opt/include -L/opt/lib -loutils -o binaire :
compiler le programme avec var.c

19. ./binaire :
exécuter le programme

20. ceil et floor de la bibliothèque mathématique standard pour effectuer l'arrondi. Enlever la virgule (#include <math.h>)
ceil : plus grand
floor : plus petit

21. gcc main.c var.c -I/opt/include -L/opt/lib -loutils -lm -o binaire :
compiler le programme ( -lm : relier la bibliothèque de math)