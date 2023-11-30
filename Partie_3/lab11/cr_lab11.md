Q2 : 
nano Makefile
# créer mon Makefile avec des conditions
# make all ou make : compiler tout.
# make install : pour installer l'exécutable dans votre répertoire personnel.
# make clean : pour supprimer les fichiers objets et l'exécutable.

Q3 :
make : compiler les fichiers source, créer les fichiers objets, puis l'executable
make install : copier l'exécutable vers des répertoires spécifiques du système 
make min.o : mis à jour min.o
make clean : supprimant les fichiers objets et l'exécutable générés lors de la compilation

Lorsque on exécute simplement make sans cible, il utilise la première cible dans le Makefile comme cible par défaut.

Q4 :
ajoute des macros 
CC = gcc
OBJ = max.o min.o var.o
CC_OPTIONS =

Q5 :
make CC_OPTIONS="-g -Wall"
-g : pour inclure les informations de débogage
-Wall : pour activer tous les avertissements au compilateur lors de la compilation.

Q6&7&8:
make clean
make -f makefile2 DEBUG=yes
make -f makefile2 DEBUG=no
# compiler le programme

Q9 :
@echo "Mode de compilation: $(DEBUG)"
# afficher la mode
