# Notes à propos de Debian Linux 10.9

### Installation de debian 10.9

Télécharger l'image iso de debian et vérification de la somme de contrôle:

```
sha256sum debian...iso
```

Commande pour créer une clef usb bootable:

`dd if=debian...iso of=/dev/sd??? bs=32M`


Après l'installation de l'environnement cinnamon, ctrl-alt-F4 pour se connecter sur une console en mode texte.
Le premier démarrage montre un écran noir car il n'y a pas le driver de la carte graphique.

### sudoers.d

Ajout d'un fichier myuser dans `/etc/sudoers.d`

Contenant une ligne 

```
myuser ALL=(ALL:ALL) NOPASSWD:ALL:
```

### drivers

Ajout des repositories non-free dans `/etc/apt/sources.list`

```
deb http://security.debian.org/debian-security buster/updates main contrib
deb-src http://security.debian.org/debian-security buster/updates main contrib

deb http://{{host}}/debian/ buster main contrib non-free
deb-src http://{{host}}/debian/ buster main contrib non-free
deb http://{{host}}/debian/ buster-updates main contrib non-free
deb-src http://{{host}}/debian/ buster-updates main contrib non-free
```

Et après `sudo apt-get update`, installation des drivers:

```
sudo apt install firmware-amd-graphics
sudo reboot
```

### Cinnamon

Pour ajouter des icônes sur le bureau, aller dans le "Menu" puis cliquer sur une application et faire un clic droit et choisir "Ajouter au bureau"

#### imprimante 

Ajouter l'imprimante via son adresse IP.

#### scanner

```
$ hp-makeuri 192.168.0.xxx 
$ sudo apt install xsane 
$ xsane "hpaio:/net/HP_LaserJet_Pro?ip=192.168.0.xxx"
```
### radio

Sous Rhythmbox, Radio, Ajouter: 

http://icecast.radiofrance.fr/franceinter-hifi.aac

Puis ajuster les propriétés pour donner un nom idoine.

On trouve les URLs à l'url suivante: https://doc.ubuntu-fr.org/liste_radio_france


