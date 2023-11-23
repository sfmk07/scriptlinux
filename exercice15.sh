#!/bin/bash


echo "Entrez une année :"
read annee


if [ $((annee % 4)) -eq 0 ]; then
    if [ $((annee % 100)) -ne 0 ] || [ $((annee % 400)) -eq 0 ]; then
        echo "$annee est une année bissextile."
    else
        echo "$annee n'est pas une année bissextile."
        echo "Une année est bissextile si elle est divisible par 4."
        echo "Cependant, une année divisible par 100 n'est pas bissextile, sauf si elle est également divisible par 400."
    fi
else
    echo "$annee n'est pas une année bissextile."
fi

