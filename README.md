# My Magic Prompt 🪄

My Magic Prompt est un prompt interactif développé en Bash.
Il permet d'exécuter différentes commandes permettant de manipuler des fichiers et dossiers, consulter des informations et utiliser plusieurs fonctionnalités.

## Installation

Le projet doit être placé dans le dossier :

```bash
~/my-magic-prompt/
```

Le point d'entrée du programme est :

```bash
~/my-magic-prompt/main.sh
```

Pour lancer le prompt :

```bash
cd ~/my-magic-prompt
./main.sh
```

> Le script doit respecter la structure de base d'un script Bash vue en cours.

## Accès au prompt

L'accès au prompt est protégé par un login et un mot de passe.

Pour entrer dans le programme, l'utilisateur doit fournir les identifiants spécifiques prévus par le projet.

# Commandes disponibles

Une fois connecté, les commandes suivantes sont disponibles.

| Commande  | Description                                                                      |
| --------- | -------------------------------------------------------------------------------- |
| `help`    | Affiche la liste des commandes disponibles                                       |
| `ls`      | Liste les fichiers et dossiers, y compris les fichiers cachés                    |
| `rm`      | Supprime un fichier                                                              |
| `rmd`     | Supprime un dossier                                                              |
| `rmdir`   | Alias de `rmd`, permet de supprimer un dossier                                   |
| `about`   | Affiche une description du programme                                             |
| `version` | Affiche la version du prompt                                                     |
| `--v`     | Alias de `version`                                                               |
| `vers`    | Alias de `version`                                                               |
| `age`     | Demande l'âge de l'utilisateur et indique s'il est majeur ou mineur              |
| `profil`  | Affiche le prénom, le nom, l'âge et l'adresse e-mail                             |
| `passw`   | Permet de modifier le mot de passe avec confirmation                             |
| `cd`      | Permet de se déplacer dans un dossier créé ou de revenir au dossier précédent    |
| `pwd`     | Affiche le répertoire courant                                                    |
| `hour`    | Affiche l'heure actuelle                                                         |
| `httpget` | Télécharge le HTML d'une page et demande le nom du fichier de destination        |
| `smtp`    | Permet d'envoyer un mail en demandant l'adresse, le sujet et le corps du message |
| `open`    | Ouvre un fichier avec VIM, même si le fichier n'existe pas                       |
| `quit`    | Quitte le prompt                                                                 |


## Modification du mot de passe

La commande :

```bash
passw
```

permet de modifier le mot de passe.

Le nouveau mot de passe doit être **confirmé** avant d'être enregistré.

Le changement effectué avec `passw` doit également être pris en compte par les fonctionnalités protégées du programme.

# Bonus

Le projet peut être enrichi avec des fonctionnalités supplémentaires.

## RPS — Rock Paper Scissors

La commande :

```bash
rps
```

lance un jeu de Pierre-Papier-Ciseaux à deux joueurs.

Le jeu doit :

* demander le nom du joueur 1 ;
* demander le nom du joueur 2 ;
* afficher à tour de rôle le joueur qui doit jouer ;
* déterminer le vainqueur en 3 manches;
* compter les points ;
* afficher le résultat.

### Règles

```text
Pierre bat Ciseaux
Ciseaux bat Papier
Papier bat Pierre
```

### SuperKitty

Le jeu comporte également un pouvoir ultime appelé :

```text
SuperKitty
```

Ce pouvoir permet de gagner à tous les coups.


# Validation du projet

1. Le projet doit respecter l'emplacement et la structure demandés.
2. Le script principal doit être :

```text
main.sh
```
