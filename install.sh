#! /bin/bash

# Useless decorative message
echo "Prepare for install!"

# I know that if someone is running this script they probably just cloned the repo and are up to date but still
echo "Making sure we are up to date"
git pull origin master -q
echo "All done updating"

# Amazing fake loading bar! totally not from stack overflow/exchange
sudo cp -i ./fuck.sh /usr/bin/fuck
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
echo "fuck has now been installed"