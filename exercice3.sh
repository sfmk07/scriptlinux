#!/bin/sh


echo "Entrez le nom du fichier à créer :"
read nom_fichier


if [ -e "$nom_fichier" ]; then
    echo "Le fichier existe déjà."
    exit 1
fi


touch "$nom_fichier"
echo "Le fichier $nom_fichier a été créé avec succès."

