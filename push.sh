#!/bin/bash

msg="Update files"

if [ $# -eq 1 ]; then
    msg="$1"
fi

(cd ~/repos/My-arch/ &&
git add . &&
git commit -m "${msg}" &&
git push origin main)
