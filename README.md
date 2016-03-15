Magic dotfiles
==============

Ce dépôt contient des fichiers à placer dans votre UserDir

## Installation

L'installation sera détaillée composant par composant, on supposera que ce dépôt a été cloné dans votre UserDir : ~/dotfiles

```bash

cd ~
git clone https://github.com/jebovic/dotfiles

```

## What's included

### Bash

* **bash_profile** : fichier pilote du bash, permet simplement de charger les autres .bash_*
* **bash_aliases** : contient des alias standards, des raccourcis, des connexions ssh...
* **bash_env** : contient les variables d'environnement
* **bash_prompt** : contient toutes les règles d'affichage (branche git, couleurs...)
* **bash_functions** : contient des fonctions custom (screen, mkdir + cd ...)

**Installation complète**

Pour profiter des modifications du bash, il suffit de copier / déplacer / lier les fichiers .bash_* de ce dépot dans votre UserDir

```bash

cd ~
ln -s dotfiles/.bash_*

```

**Installation partielle**

Si vous ne souhaitez récupérer que l'affichage du bash, vous pouvez charger uniquement le fichier **.bash_prompt** depuis votre **.bash_profile** ou **.bashrc** ou **/etc/bashrc** ou ...

Pour la prise en compte de celui-ci, il faut soit se déconnecter / reconnecter, soit forcer la prise en compte du fichier .bash_profile

```bash

cd ~
source .bash_profile

```

### VIM

Lorsque vous déprimez devant votre VIM, essayez de customiser un peu son affichage et son comportement.

* **.vimrc** : customisation du comportement (exemple : la touche F2 permet d'afficher/masquer les numéros de ligne) et choix du thème VIM
* **.vim** : dossier contenant des thèmes pour VIM (darcula, monokai)

**Installation**

Il suffit de copier / déplacer / lier les fichiers .vim* de ce dépot dans votre UserDir

```bash

cd ~
ln -s dotfiles/.vim*

```

Ces fichiers sont pris en compte à chaque démarrage de VIM.

### .inputrc

Ce fichier permet de modifier le comportement du terminal lorsque vous écrivez une commande. Celui-ci vous permet de modifier le comportement des flêches haut/bas afin de rechercher dans l'historique les commandes correspondant à votre commande en cours. Il permet également d'utiliser ctrl+fleche gauche/droite afin de passer de mot en mot sur la commande en cours de saisie.

**Installation**

Il suffit de copier / déplacer / lier le fichier .inputrc de ce dépot dans votre UserDir

```bash

cd ~
ln -s dotfiles/.inputrc

```

### screen.d

A utiliser avec précautions si vous utilisez screen. Dans ce fichier, vous trouverez la configuration nécessaire pour afficher une barre de status en bas de votre terminal, des actions par défaut lors du lancement de screen... Comme pour les autres, il suffit de le placer dans votre UserDir

Couplé à la fonction scr() déclarée dans **.bash_functions**, ce dossier vous permet d'utiliser différentes configuration de screen.
Par exemple ici, le fichier de configuration "servers" permet d'ouvrir des fenêtres screen et de se connecter automatiquement sur les différents serveurs, le common lui permet d'ouvrir une fenêtre "standard" ainsi qu'une fenêtre "root".

**Installation**

Rien de particulier, si le fichier contenant la fonction scr() est bien chargé, il vous suffira de l'utiliser comme suit

```bash

# Ouverture de screen avec le fichier de configuration "common"
scr common
# Ouverture de screen avec les fenêtres connectées
scr servers

```
