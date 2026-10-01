#!/bin/bash

source ./login.sh
source ./cmd.sh
source .env

login=$LOGIN
password=$PASSWORD
age="18"
nom="P"
prenom="Raph"
version="0.1"

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