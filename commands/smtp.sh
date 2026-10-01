smtp_function() {
  echo -n "Adresse: "
  read adresse
  echo -n "Objet: "
  read objet
  echo -n "Corps: "
  read sujet

  echo "Mail envoyé:"
  echo "  A: $adresse"
  echo "  Objet: $objet"
  echo "  Corps: $corps"
}