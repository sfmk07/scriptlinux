#!/bin/bash


roll_die() {
    echo $((RANDOM % 6 + 1))
}


echo "Combien de fois souhaitez-vous simuler le lancer de deux dés ?"
read nombre_de_lancers

declare -A resultats


for ((i = 0; i < nombre_de_lancers; i++)); do
    resultat=$(($(roll_die) + $(roll_die)))
    ((resultats[$resultat]++))
done


echo "Fréquence des résultats :"
for ((i = 2; i <= 12; i++)); do
    echo "Total $i : ${resultats[$i]:-0} fois"
done

