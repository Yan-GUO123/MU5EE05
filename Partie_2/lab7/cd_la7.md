echo $HOME       # afficher home
echo $PATH       # afficher le chemin
ps aux           # créer un script bash
chmod +x liste_processe.sh    # accéder dans le script
ps aux                        # lister les processus en cours d'exécution
sudo mv liste_processe.sh /opt/     # déplacer le fichier dans le répertoire opt(créé par Linux)
export PATH=$PATH:/opt     # Exécutez la commande suivante pour ajouter le répertoire /opt au PATH
echo $PATH                 #  vérifier si opt est dans PATH
Si on relanche un nouveau terminal, echo $PATH affiche pas comme avant
nano ~/.bashrc     # ouvrir le fichier bashrc
export PATH=$PATH:/opt   # ajouter cette phrase à la fin de text de bashrc
cp ~/.bashrc /home/spi-2019-34/Bureau/MU5EE05/Partie_2/lab7             # copie le fichier .bashrc dans lab7
cp ~/liste_processe.sh /home/spi-2019-34/Bureau/MU5EE05/Partie_2/lab7    # copie le fichier liste_processe.sh dans lab7