#!/bin/sh

PW = "root"

expect -c "
spawn sudo passwd ubuntu
expect \"Enter new UNIX password:\"
send -- \"${PW}\n\"
expect \"Retype new UNIX password:\"
send -- \"${PW}}\n\"
"
echo ""
