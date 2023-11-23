#!/bin/bash

# Demander à l'utilisateur un nom de fichier
read -p "Veuillez entrer un nom de fichier : " nom_fichier

# Demander confirmation à l'utilisateur
read -p "Voulez-vous créer le fichier $nom_fichier ? (oui/non) : " confirmation

# Vérifier la réponse de l'utilisateur
if [ "$confirmation" == "oui" ]; then
    # Créer le fichier
    touch "$nom_fichier"
    echo "Le fichier $nom_fichier a été créé."
else
    # Afficher un message de sortie
    echo "Opération annulée. Aucun fichier n'a été créé."
fi

