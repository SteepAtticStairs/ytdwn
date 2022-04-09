#!/bin/bash

printf "\n"
printf "\n"

printf "UNINSTALL"
printf "\n"
printf "\n"
printf "This script will need sudo access to modify files in /usr/local/bin."
printf "\n"
printf "Please enter the password in now."
printf "\n"
sudo -v

sudo rm -f /usr/local/bin/ytdwn

printf "\n"
printf "Done!"
printf "\n"
printf "\n"