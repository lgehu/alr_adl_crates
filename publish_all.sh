#!/bin/bash
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
    cp $CRATE_NAME/alire/archives/* $CRATE_NAME/
    cp $CRATE_NAME/alire/releases/* ../alire-index/index/$PREFIX/$CRATE_NAME/
done