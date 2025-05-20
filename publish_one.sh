#!/usr/bin/expect -f
set CRATE_NAME [lindex $argv 0]
set CRATE_VERSION "0.1.0-dev"

spawn alr --force publish --tar --skip-build --for-private-index
expect "[Y] Yes  [N] No"
send -- "Y\n"
expect "Enter URL"
send -- "alire/archives/$CRATE_NAME-$CRATE_VERSION.tgz\n"
expect "[Y] Yes  [N] No"
send -- "Y\n"
expect "[Y] Yes  [N] No"
send -- "Y\n"
expect eof