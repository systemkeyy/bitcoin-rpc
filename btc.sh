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
adduser bitcoin-user --p
echo
sleep 0.1
echo
sleep 0.1
echo
sleep 0.1
echo
sleep 0.1
echo
sleep 2
chmod +x rpcX.pl
./rpcX.pl
