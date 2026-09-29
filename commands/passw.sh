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