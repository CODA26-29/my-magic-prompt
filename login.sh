login() {
  echo -n "Login: "
  read usr_login

  echo -n "Password: "
  read usr_passw

  if [ "$usr_login" != "$login" ] || [ "$usr_passw" != "$password" ]; then
    quit
  fi
}