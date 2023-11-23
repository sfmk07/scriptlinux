#!/bin/bash

# Nom du fichier à vérifier
fichier_a_verifier="excerice7"

# Vérifier si le fichier existe
if [ -e "$fichier_a_verifier" ]; then
    echo "Le fichier $fichier_a_verifier existe dans le répertoire courant."
else
    echo "Le fichier $fichier_a_verifier n'existe pas dans le répertoire courant."
fi


