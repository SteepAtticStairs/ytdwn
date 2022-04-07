#!/bin/bash

printf "\n"
printf "\n"

printf "INSTALL"
printf "\n"
printf "\n"
printf "This script will need sudo access to modify files in /usr/local/bin."
printf "\n"
printf "Please enter the password in now."
printf "\n"
sudo -v

cd ~
mkdir ytdwn
cd ytdwn
curl -O "https://raw.githubusercontent.com/SteepAtticStairs/ytdwn/main/ytdwn.sh"
sudo rm -f /usr/local/bin/ytdwn
sudo cp ytdwn.sh /usr/local/bin/ytdwn
sudo chown root: /usr/local/bin/ytdwn
sudo chmod 755 /usr/local/bin/ytdwn
cd ~
rm -rf ytdwn

printf "\n"
printf "Done!"
printf "\n"
printf "\n"