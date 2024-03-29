#!/bin/bash
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
B='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
echo -e "${B} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "                       ${B}\e[1;92;41m FEATURES ${NC}"
echo -e " ${B}└─────────────────────────────────────────────────────┘${NC}"
echo -e "     ${B}[${BIWhite}01${B}] Panel Domain      "
echo -e "     ${B}[${BIWhite}02${B}] Change Port All Account      "
echo -e "     ${B}[${BIWhite}03${B}] Webmin Menu      "
echo -e "     ${B}[${BIWhite}04${B}] Speedtest VPS   "
echo -e "     ${B}[${BIWhite}05${B}] About Script     "
echo -e "     ${B}[${BIWhite}06${B}] Set Auto Reboot   "
echo -e "     ${B}[${BIWhite}07${B}] Restart All Service"
echo -e "     ${B}[${BIWhite}08${B}] Change Banner"
echo -e "     ${B}[${BIWhite}09${B}] Cek Bandwith"
echo -e "     ${B}[${BIWhite}10${B}] Setting Auto Reboot"
echo -e "     ${B}[${BIWhite}11${B}] INSTALL BOT"
echo -e " ${B}└─────────────────────────────────────────────────────┘${NC}"
echo -e "     ${B}Press x or [ Ctrl+C ] • To-${BIWhite}Exit${NC}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-domain ; exit ;;
2) clear ; port-change ; exit ;;
3) clear ; menu-webmin ; exit ;;
4) clear ; speedtest ; exit ;;
5) clear ; about ; exit ;;
6) clear ; auto-reboot ; exit ;;
7) clear ; restart ; exit ;;
8) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
9) clear ; bw ; exit ;;
10) clear ; jam ; exit ;;
11) clear ; xolpanel ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
