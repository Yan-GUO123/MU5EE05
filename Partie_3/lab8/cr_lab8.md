Partie_3

Q1&2: créé des fichiers pour max.h, max.c, testmax.c, après on compile les fichiers "gcc -g -o testmax testmax.c max.c".(-g pour débugger le code). Après on exécute le programme : ./testmax 

Q3&4 :   -E : gcc -E testmax.c -o testmax_preprocessed.c 
            pour générer le fichier de préprocesseur. Cela nous montrera le code source après le prétraitement (inclusion de fichiers d'en-tête, macros, etc.) sans effectuer de compilation.

       -S : gcc -S testmax_preprocessed.c -o testmax_assembly.s
            pour générer le fichier assembleur. Cela vous montrera le code assembleur généré à partir du code source sans effectuer de compilation.

       -C : gcc -c testmax_assembly.s -o testmax_object.o   
            pour générer le fichier objet. Cela compilera le code source et générera un fichier objet, mais n'effectuera pas l'étape de liaison. C'est en binaire.

-o : fichier de sortie (sortir le fichier après -o)
gcc : un compilateur 

Q7&8 : meme principe que max
Q9 : créé un fichier test.c et compile : gcc -g -o test test.c max.c min.c variance.c 
    exécuter le programme : python3 test.py


Partie_2

Q1 : créé un fichier test.py

Q2 : compile le programme et recevoir le fichier en binaire .pyc



