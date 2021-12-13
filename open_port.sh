#!/bin/sh

# Author : Shreejal Maharjan
if which firewall-cmd >/dev/null; then
        echo "What port do you want to open?"
        read PORT
        sudo firewall-cmd --zone=public --add-port=$PORT/tcp --permanent  >/dev/null
        sudo firewall-cmd --zone=public --add-port=$PORT/udp --permanent  >/dev/null
        sudo firewall-cmd --reload
else
    echo please installed firewalld
fi
