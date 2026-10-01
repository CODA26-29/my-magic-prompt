source ./commands/quit.sh
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
source ./commands/joke.sh
source ./commands/calc.sh

cmd() {
  cmd=$1
  shift
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) help_function;;
    ls ) ls_function;;
    rm ) rm_function $argv;;
    rmd | rmdir ) rmdir_functio $argv;;
    about ) about_function;;
    version | --v | vers ) version_function;;
    age ) age_function;;
    profile ) profile_function;;
    hour ) hour_function;;
    pwd ) pwd_function;;
    cd ) cd_function $argv;;
    open ) open_function $argv;;
    passw ) passw_function;;
    httpget ) httpget_function $argv;;
    smtp ) smtp_function;;
    rps ) rps_function;;
    joke ) joke_function;;
    calc ) calc_function;;
    clear ) clear;;
    touch ) touch $argv;;
    * ) echo "Commande inconnue";;
  esac
}