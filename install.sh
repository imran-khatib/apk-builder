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
if [ -z $1 ];then
	printf "${RED}"
	echo "Error Occured!"
	printf "${STOP}"
	exit 0;
fi
echo
echo "==========================================="
echo "Installing JDK.........................."

sudo apt-get install default-jdk -y
if [ -z $1 ];then
	printf "${RED}"
	echo "Error Occured!"
	printf "${STOP}"
	exit 0;
fi
