#!/bin/bash

# Demander à l'utilisateur vers quel environnement copier
read -p "Vers quel environnement souhaitez-vous copier (staging/prod) ? " env_cible

# Afficher le résultat de la valeur entrée
echo "Vous avez choisi de copier vers : $env_cible"

# Vérifier si l'environnement cible est valide
if [[ "$env_cible" != "staging" && "$env_cible" != "prod" ]]; then
    echo "Environnement cible invalide. Veuillez choisir 'staging' ou 'prod'."
    exit 1
fi

if [[ "$env_cible" == "staging" ]]; then
    # Migration de Dev vers Staging
    find ./dev -mindepth 1 -maxdepth 1 \( ! -name "config.json" \) -exec cp -r {} ./staging \;
elif [[ "$env_cible" == "prod" ]]; then
    # Migration de Staging vers Prod
    find ./staging -mindepth 1 -maxdepth 1 \( ! -name "config.json" \) -exec cp -r {} ./prod \;
else
    echo "Environnement cible invalide. Veuillez choisir 'staging' ou 'prod'."
fi

echo "Déploiement et migration de l'application terminés."
