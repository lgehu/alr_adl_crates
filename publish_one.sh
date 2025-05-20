#!/usr/bin/expect -f
set CRATE_NAME [lindex $argv 0]
set CRATE_VERSION "0.1.0-dev"

spawn alr --force publish --tar --skip-build --for-private-index
expect "Do you want to proceed with this information?"
send -- "Y\n"
expect "Enter URL"
send -- "https://github.com/lgehu/alr_adl_crates/raw/refs/heads/remote-dep/$CRATE_NAME/$CRATE_NAME-$CRATE_VERSION.tgz\n"
expect "Is this information correct?"
send -- "Y\n"
expect "Do you want to proceed with this information?"
send -- "Y\n"
sleep 1