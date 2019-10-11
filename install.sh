#! /bin/bash

# colors
RED='\033[0;31m'
NC='\033[0m' # No Color

# Useless decorative messages
echo -e "${RED}
####### #     #  #####  #    # 
#       #     # #     # #   #  
#       #     # #       #  #   
#####   #     # #       ###    
#       #     # #       #  #   
#       #     # #     # #   #  
#        #####   #####  #    # 
${NC}"
echo "Prepare for install!"

function fuckWithoutUpdate () {
    # I know that if someone is running this script they probably just cloned the repo and are up to date but still
    echo "Skipping Update"

    # Amazing fake loading bar! Totally not from stack overflow/exchange
    sudo cp -i ./fuck.sh /usr/bin/fuck
    sudo chmod +x /usr/bin/fuck
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
    echo -e "${RED}fuck${NC} has now been installed"
}

function fuckWithUpdate () {
    # I know that if someone is running this script they probably just cloned the repo and are up to date but still
    echo "Making sure we are up to date"
    git fetch --all
    git reset --hard origin/master -q
    echo "All done updating"

    # Amazing fake loading bar! Totally not from stack overflow/exchange
    sudo cp -i ./fuck.sh /usr/bin/fuck
    sudo chmod +x /usr/bin/fuck
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
    echo -e "${RED}fuck${NC} has now been installed"
}

if [ $1 ]; then
    fuckWithoutUpdate
else 
    fuckWithUpdate
fi
