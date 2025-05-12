#!/bin/bash

msg="Update files"

if [ $# -ne 0 ] && [ $# -ne 1 ]; then
    echo -e "Usage: $0 <Optional commit message>\n- Default commit message: ${msg}"
    exit 1
fi

if [ $# -eq 1 ]; then
    msg="$1"
fi

(cd ~/repos/My-arch/ &&
git add . &&
git commit -m "${msg}" &&
git push origin main)
