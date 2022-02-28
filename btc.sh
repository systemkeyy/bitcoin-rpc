#!/bin/bash
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m' Please enter the details if script is to lazy - MUST BE RAN AS ROOT'\033[0m' 
echo -e $'\e[1;91m[\e[0m\e[1;77mS\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mY\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mS\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mT\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mE\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mM\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77mK\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77me\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77my\e[0m\e[1;91m]\e[1;32m'
sleep 0.1
echo -e $'\e[1;91m[\e[0m\e[1;77my\e[0m\e[1;91m]\e[1;32m'
sleep 4
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " bitcoind
	read -s -p "Enter password : " changelater
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "changekater")' $password)
		useradd -m -p "$pass" "$username"
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi
