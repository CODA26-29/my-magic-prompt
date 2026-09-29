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