#!/bin/bash

# This script automates the task of information gathering for a web server

# Make sure the script is being executed with superuser privileges
if [[ "${UID}" -ne 0 ]]
then
   echo 'Please run with sudo or as root.' >&2
   exit 1
fi

# If the user doesn't supply at least one argument, then give them help
if [[ "${#}" -lt 1 ]]
then
  echo "Usage: ${0} {WEB_SERVER}" >&2
  echo 'Please use the above mentioned format with the name of the WEB_SERVER you wish to gather information about' >&2
  exit 1
fi

# The firsr parameter is the webserver
WEB_SERVER="${1}"

echo -e "IGTOOL : Automates the task of information gathering\n">ig.txt

# nslookup
echo -e "1. -----nslookup-----\n">>ig.txt
nslookup ${WEB_SERVER}>>ig.txt

# whois
echo -e "\n2. -----whois-----\n">>ig.txt
whois ${WEB_SERVER}>>ig.txt

# nmap
echo -e "\n3. -----nmap-----\n">>ig.txt
sudo nmap -O -F ${WEB_SERVER}>>ig.txt

# theHarvester
echo -e "\n4. -----theHarvester-----\n">>ig.txt
theHarvester -d ${WEB_SERVER} -b all>>ig.txt

# lbd
echo -e "\n5. -----lbd-----\n">>ig.txt
lbd ${WEB_SERVER}>>ig.txt

# wafw00f
echo -e "\n6. -----wafw00f-----\n">>ig.txt
wafw00f ${WEB_SERVER}>>ig.txt
