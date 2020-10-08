# igtool: Information Gathering Tool
This is a personal project which automates the task of footprinting and reconnaissance for a webserver.

## General Info
The shell script automates the tasks done by various tools mentioned below

1. nslookup
-> nslookup is a network administration command-line tool available in many computer operating systems for querying the Domain Name System to obtain domain name or IP address mapping, or other DNS records. The name "nslookup" means "name server lookup".
2. whois
-> WHOIS is a query and response protocol that is widely used for querying databases that store the registered users or assignees of an Internet resource, such as a domain name, an IP address block or an autonomous system, but is also used for a wider range of other information.
3. nmap
-> Nmap is a free and open-source network scanner created by Gordon Lyon. Nmap is used to discover hosts and services on a computer network by sending packets and analyzing the responses. Nmap provides a number of features for probing computer networks, including host discovery and service and operating system detection.
4. theHarvester
-> The objective of this program is to gather emails, subdomains, hosts, employee names, open ports and banners from different public sources like search engines, PGP key servers and SHODAN computer database.
5. lbd
-> lbd (load balancing detector) detects if a given domain uses DNS and/or HTTP Load-Balancing (via Server: and Date: header and diffs between server answers).
6. wafw00f
-> Wafw00f is simply a python tool which automates a set of procedures used in finding a WAF. Wafw00f simply queries a web server with a set of HTTP requests & methods. It analyses the responses from them & detects the firewall in place.
7. nikto
Nikto is an Open Source (GPL) web server scanner which performs comprehensive tests against web servers for multiple items, including over 6700 potentially dangerous files/programs, checks for outdated versions of over 1250 servers, and version specific problems on over 270 servers. It also checks for server configuration items such as the presence of multiple index files, HTTP server options, and will attempt to identify installed web servers and software. Scan items and plugins are frequently updated and can be automatically updated.

## Setup
To run this project you need to have a Linux based operating system with the following packages installed
`nslookup`
`whois`
`nmap`
`theHarvester`
`lbd`
`wafw00f`
`nikto`

Kali Linux is preferred as it already has the above mentioned tools installed.

## Project status
This project is currently in development. More features are being added.
