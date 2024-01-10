Connection port série : 
2)sudo raspi-config
3)dmesg | grep ttyUSB0 ou dans /dev on met ls |grep ttyUSB0
4)apt install picocom
5)ls  -l  /dev/ttyUSB0 
On appartient pas au root  pour se faire on fait la commande  sudo adduser $USER dialout pour appartenir au groupe dialpout.
6)sudo reboot, et la commande : cat /etc/group |grep dialout 
nous permet de voir qu'on appartient bien au groupe dialout.
7)picocom  -b  115200  /dev/ttyUSB0 pour démarrer la connection série
8) la session est lancé.
Connection port Ethernet : 
9) ifconfig pour voir els ionterface du réseau ip sur la carte 
11) on arrive a detecter la nouvelle interface 
12)On lance network et dans USB ETHERNET on change l'adresse ipv4 et le net mask ( associer une adresse ip au pc ) 
13) /etc/init.d/network-manager  restart pour redemarer l'interface ethernet 

14)sur le pc cd /etc puis nano dhcpc.conf et on change les adresses ip puis on les decommente.
On associe une adresse ip à la carte 
15) /etc/init.d/network-manager  restart
16)lancer un ping a partir du pc 
ping 192.168.0.10
pind + adresse ip de la carte 
--- 192.168.0.10 ping statistics ---
802 packets transmitted, 802 received, 0% packet loss, time 802740ms
rtt min/avg/max/mdev = 0.741/1.847/6.260/0.592 ms
 le ping fonctionne
17)sudo raspi-config puis ( enable SSH) 
18)sudo service ssh status
Active running s'affiche en vert 
19)
  sudo apt update 
  sudo apt upgrade 
  sudo apt install openssh-client 
20)
pour etablir une connection sshb du pc vert la carte 
ssh yan@192.168.0.10
  
21)scp toto yan@192.168.0.10:Desktop
pour transferer un fichier text

Connection VNC : 
24)sudo raspi-config
