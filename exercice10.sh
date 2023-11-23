#!/bin/sh


echo "Entrez une phrase :"
read phrase


voyelles=0
consonnes=0
espaces=0


for char in $(echo "$phrase" | sed -e 's/./& /g'); do
    case $char in
        [aeiouAEIOU])  # Vérifier si le caractère est une voyelle
            voyelles=$((voyelles + 1))
            ;;
        [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])  # Vérifier si le caractère est une consonne
            consonnes=$((consonnes + 1))
            ;;
        ' ')  # Vérifier si le caractère est un espace
            espaces=$((espaces + 1))
            ;;
    esac
done


echo "Nombre de voyelles : $voyelles"
echo "Nombre de consonnes : $consonnes"
echo "Nombre d'espaces : $espaces"

