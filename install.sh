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
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
fi
echo
echo "==========================================="
echo "Installing JDK.........................."

sudo apt-get install default-jdk -y
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
fi
echo "Installing Toilet.........😝😝😝 "
apt-get install toilet
if [[ $? -ne 0 ]] ; then
    printf "${RED}"
    echo "Error Occured!"
    printf "${STOP}"
    exit 1
fi

