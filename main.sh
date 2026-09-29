#!/bin/bash
source quit.sh
source ./commands/help.sh
source ./commands/ls.sh
source ./commands/rm.sh
source ./commands/rmdir.sh
source ./commands/about.sh
source ./commands/version.sh
source ./commands/age.sh
source ./commands/profile.sh
source ./commands/hour.sh
source ./commands/pwd.sh
source ./commands/cd.sh
source ./commands/open.sh
source ./commands/passw.sh
source ./commands/httpget.sh
source ./commands/smtp.sh
source ./commands/rps.sh

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
    profile ) profile_function;;
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