#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Script to stop default system resolver, to free 53 port: 

chmod +x installDocker.sh

./installDocker.sh 

echo "Trying to free UDP/53 Port:"
sudo systemctl stop systemd-resolved
sudo systemctl disable systemd-resolved
