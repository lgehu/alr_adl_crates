#!/bin/bash

# Branche ou commit à archiver (change si besoin)
BRANCH=HEAD

# Boucle sur chaque sous-dossier
for dir in */ ; do
    # Supprimer le slash final
    name=${dir%/}

    # Vérifier si ce sous-dossier existe dans git
    if git ls-tree -d "$BRANCH" "$name" > /dev/null 2>&1; then
        echo "Archivage de $name..."
        git archive --format=tar.gz --prefix="$name/" $BRANCH $name -o "${name}/${name}.tar.gz"
    else
        echo "Dossier $name non suivi par Git, ignoré."
    fi
done
