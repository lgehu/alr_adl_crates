#!/bin/bash

#git stash # Stash current change otherwise alire won't be happy
SCRIPT_DIR=$(dirname "$(realpath "$0")")
CRATE_VERSION="0.1.0-dev"

if [[ $# > 0 ]] then
    CRATES=("$@")
else
    CRATES="*/"
fi

# Generate archives and manifest
for dir in $CRATES; do
    CRATE_NAME=${dir%/}
    PREFIX=${CRATE_NAME:0:2}
    (
        cd "$CRATE_NAME" || exit
    "$SCRIPT_DIR/publish_one.sh" "$CRATE_NAME"
    )
done

# Copy manifest to alire index
for dir in $CRATES; do
    CRATE_NAME=${dir%/}
    PREFIX=${CRATE_NAME:0:2}

    RELEASE_P=$CRATE_NAME/alire/releases

    cp $CRATE_NAME/alire/archives/* $CRATE_NAME/
   
    # Replace local URL by remote URL
    sed -i "/url =/c\url = \"https://github.com/lgehu/alr_adl_crates/raw/refs/heads/remote-dep/$CRATE_NAME/$CRATE_NAME-$CRATE_VERSION.tgz\"" $RELEASE_P/$CRATE_NAME-$CRATE_VERSION.toml
   
    mkdir -p ../alire-index/index/$PREFIX/$CRATE_NAME
    cp $RELEASE_P/* ../alire-index/index/$PREFIX/$CRATE_NAME/
done

# Commit and push on alr_adl_crates and alire-index repo
push()
{
    git add -A
    git commit -m "release $CRATE_VERSION"
    git push origin remote-dep

    cd ../alire-index
    git add -A
    git commit -m "release $CRATE_VERSION"
    git push origin

    alr index --update-all
}
push

#git stash pop 
