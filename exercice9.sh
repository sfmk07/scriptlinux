#!/bin/sh


is_prime() {
    local num=$1
    local i=2

    # Vérification de la primalité
    while [ $((i * i)) -le $num ]; do
        if [ $((num % i)) -eq 0 ]; then
            return 1  # Le nombre n'est pas premier
        fi
        i=$((i + 1))
    done

    return 0  # Le nombre est premier
}


echo "Entrez un nombre pour générer la liste des nombres premiers jusqu'à ce nombre :"
read max_num


sum=0


for ((num=2; num<=max_num; num++)); do
    if is_prime $num; then
        echo "Nombre premier : $num"
        sum=$((sum + num))
    fi
done


echo "La somme des nombres premiers jusqu'à $max_num est : $sum"

