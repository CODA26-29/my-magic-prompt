#!/bin/bash
source quit.sh

login="admin"
password="admin"
age="18"
nom="P"
prenom="Raph"
version="0.1"

cmd() {
  cmd=$1
  shift
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) help_function;;
    ls ) ls_function;;
    rm ) rm_function $*;;
    rmd | rmdir ) rmdir_functio $*;;
    about ) about_function;;
    version | --v | vers ) version_function;;
    age ) age_function;;
    profil ) profil_function;;
    hour ) hour_function;;
    pwd ) pwd_function;;
    cd ) cd_function $*;;
    open ) open_function $*;;
    passw ) passw_function;;
    httpget ) httpget_function $*;;
    smtp ) smtp_function;;
    rps ) rps_function;;
    clear ) clear;;
    touch ) touch $*;;
    * ) echo "Commande inconnue";;
  esac
}

help_function () {
  echo "Commandes disponibles :"
  echo "  help : Affiche l'aide"
  echo "  ls : Liste les fichiers et répertoires"
  echo "  rm : Supprime un fichier"
  echo "  rmd : Supprime un répertoire vide"
  echo "  about : Affiche des informations sur le prompt"
  echo "  version : Affiche la version du prompt"
  echo "  age : Vérifie si l'utilisateur est majeur ou mineur"
  echo "  profil : Affiche le profil de l'utilisateur"
  echo "  cd : Change le répertoire courant"
  echo "  pwd : Affiche le répertoire courant"
  echo "  hour : Affiche l'heure actuelle"
  echo "  httpget : Télécharge une page web et l'enregistre dans un fichier HTML"
  echo "  clear : Efface l'écran"
  echo "  smtp : Envoie un e-mail via SMTP"
  echo "  open : Ouvre un fichier avec vim"
}

ls_function() {
  ls -a
}

rm_function() {
  rm $*
}

rmdir_function() {
  rm -r $*
}

about_function() {
  echo "Magic Prompt: une ligne de commande magique crée par Raphaël."
}

version_function() {
  echo $version
}

hour_function() {
  date "+%H:%M"
}

pwd_function() {
  pwd
}

cd_function() {
  cd $*
}

open_function() {
  vim $*
}

age_function() {
  echo -n "Entrez votre age:"
  read string
  age=$string
  if [[ $string -ge 18 ]]; then
    echo "Tu est majeur."
  else 
    echo "Tu es mineur."
  fi
}

profil_function() {
  echo "$nom $prenom, $age ans"
}

httpget_function() {
  curl $1 --output $2.html
}

smtp_function() {
  echo -n "Adresse: "
  echo -n "Objet: "
  echo -n "Sujet: "
}

passw_function() {
  echo -n "Entrez votre nouveau mot de passe: "
  read new_pass1

  echo -n "Confirmez votre nouveau mot de passe: "
  read new_pass2

  if [ "$new_pass1" != "$new_pass2" ]; then
    echo "Les mots de passe ne sont pas identiques."
  else
    password=$new_pass1
    echo "Mot de passe changé avec succès."
  fi
}

rps_function() {
  coups=("r" "p" "s")

  echo -n "Nom du premier joueur: "
  read p1
  
  echo -n "Nom du deuxieme joueur: "
  read p2

  sp1=0
  sp2=0

  for round in 1 2 3; do
    echo "---- TOUR $round ----"
    
    echo "[ $p1 ] (r/p/s):"
    read -s p1_play

    echo "[ $p2 ] (r/p/s):"
    read -s p2_play



    if [ $p1_play == $p2_play ]; then
      echo "Draw"
    elif [ "$p1_play" == "r" -a "$p2_play" == "s" ] || [ "$p1_play" == "p" -a "$p2_play" == "r" ] || [ "$p1_play" == "s" -a "$p2_play" == "p" ]; then
      echo "$p1 wins"
      sp1=$((sp1 + 1))
    else
      echo "$p2 wins"
      sp2=$((sp2 + 1))
    fi
  done
  echo "---- RESULTS ----"
  echo "[$p1]: $sp1"
  echo "[$p2]: $sp2"
}

login() {
  echo -n "Login: "
  read usr_login

  echo -n "Password: "
  read usr_passw

  if [ "$usr_login" != "$login" ] || [ "$usr_passw" != "$password" ]; then
    quit
  fi
}

main() {
  login

  lineCount=1
  
  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mRaph\033[m ~ 🤙 ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main