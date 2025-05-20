#!/bin/bash

#git stash # Stash current change otherwise alire won't be happy

SCRIPT_DIR=$(dirname "$(realpath "$0")")
for dir in */ ; do
    CRATE_NAME=${dir%/}
    PREFIX=${CRATE_NAME:0:2}
    (
        cd "$CRATE_NAME" || exit
    "$SCRIPT_DIR/publish_one.sh" "$CRATE_NAME"
    )
done

for dir in */ ; do
    CRATE_NAME=${dir%/}
    PREFIX=${CRATE_NAME:0:2}

    RELEASE_P=$CRATE_NAME/alire/releases/*

    cp $CRATE_NAME/alire/archives/* $CRATE_NAME/
   
    # Replace local URL by remote URL
    sed -i '/url =/c\url = https://github.com/lgehu/alr_adl_crates/raw/refs/heads/remote-dep/'$CRATE_NAME-0.1.0-dev.tgz $RELEASE_P
    cp $RELEASE_P ../alire-index/index/$PREFIX/$CRATE_NAME/
done

#git stash pop 
