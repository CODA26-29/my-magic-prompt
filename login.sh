login() {
  echo -n "Login: "
  read usr_login

  echo -n "Password: "
  read usr_passw

  if [ "$usr_login" != "$app_login" ] || [ "$usr_passw" != "$app_password" ]; then
    quit
  fi
}