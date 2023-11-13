#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Script to stop default system resolver, to free 53 port: 

apt-get update && apt-get upgrade -y 

sudo systemctl disable systemd-resolved
