#!/bin/bash
clear
RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
printf "${BLUE}"
echo "Installing Zipalign wait.................."
echo "==========================================="
echo
echo
sudo apt-get install zipalign -y
echo
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
fi

echo "Installing JDK.........................."
echo "==========================================="
echo
sudo apt-get install default-jdk -y
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
fi
echo "Installing Toilet.........😝😝😝 "
echo "==========================================="

sudo apt-get install -y toilet
echo
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
else
    printf "${ORANGE}"
    echo "Installation Finished........"
    echo "==========================================="
    printf "${STOP}"
fi

