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