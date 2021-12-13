#!/bin/sh

# Author : Shreejal Maharjan

echo "What port do you want to open?"
read PORT
sudo firewall-cmd --zone=public --add-port=$PORT/tcp --permanent
sudo firewall-cmd --zone=public --add-port=$PORT/udp --permanent