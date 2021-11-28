#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "[ ! ] You must run with sudo."
  exit 1;
fi

# Add colors options & font text options
export ITALIC='\e[3m'
export B='\e[1m'
export DIM='\e[2m'
export UNDERLINE='\e[4m'
export BLINK='\e[5m'
export RESET_ALL='\e[0m'
export REVERSE='\e[7m' #(invert the foreground and background colors)
export HIDDEN='\e[7m' #(useful for passwords)

export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

install_hacktools(){

  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing arp-scan"
  sudo apt-get install -y arp-scan >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing beef"
  sudo apt-get install -y beef >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ncrack"
  sudo apt-get install -y ncrack >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing cewl"
  sudo apt-get install -y cewl >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing hashcat"
  sudo apt-get install -y hashcat >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ophcrack"
  sudo apt-get install -y ophcrack >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ophcrack-cli"
  sudo apt-get install -y ophcrack-cli >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing hydra-gtk"
  sudo apt-get install -y hydra-gtk >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing sqlmap"
  sudo apt-get install -y sqlmap >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing whatweb"
  sudo apt-get install -y whatweb >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing cutycapt"
  sudo apt-get install -y cutycapt >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing wfuzz"
  sudo apt-get install -y wfuzz >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing dmitry"
  sudo apt-get install -y dmitry >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ike-scan"
  sudo apt-get install -y ike-scan >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing netdiscover"
  sudo apt-get install -y netdiscover >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing fping"
  sudo apt-get install -y fping >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing arping"
  sudo apt-get install -y arping >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing hping3"
  sudo apt-get install -y hping3 >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing netmask"
  sudo apt-get install -y netmask >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing smbmap"
  sudo apt-get install -y smbmap >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing nbtscan"
  sudo apt-get install -y nbtscan >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing swaks"
  sudo apt-get install -y swaks >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing onesixtyone"
  sudo apt-get install -y onesixtyone >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ssldump"
  sudo apt-get install -y ssldump >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing sslh"
  sudo apt-get install -y sslh >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing recon-ng"
  sudo apt-get install -y recon-ng >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing wifite"
  sudo apt-get install -y wifite >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing reaver"
  sudo apt-get install -y reaver >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing pixiewps"
  sudo apt-get install -y pixiewps >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing crunch"
  sudo apt-get install -y crunch >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing medusa"
  sudo apt-get install -y medusa >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing john"
  sudo apt-get install -y john >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing hydra"
  sudo apt-get install -y hydra >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing nikto"
  sudo apt-get install -y nikto >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing brutefroce-luks"
  sudo apt-get install -y bruteforce-luks >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing aricrack-ng"
  sudo apt-get install -y aircrack-ng >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing whois"
  sudo apt-get install -y whois >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing wapiti"
  sudo apt-get install -y wapiti >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing masscan"
  sudo apt-get install -y masscan >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing dirb"
  sudo apt-get install -y dirb >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing httrack"
  sudo apt-get install -y httrack >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing nmap"
  sudo apt-get install -y nmap >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing macchanger"
  sudo apt-get install -y macchanger && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing ettercap-graphical"
  sudo apt-get install -y ettercap-graphical >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing wafw00f"
  sudo apt-get install -y wafw00f >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing scapy"
  sudo apt-get install -y scapy >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing sslstrip"
  sudo apt-get install -y sslstrip >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing proxychains"
  sudo apt-get install -y proxychains >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing openvpn"
  sudo apt-get install -y openvpn >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing tcpdump"
  sudo apt-get install -y tcpdump >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_RED}!${RESET_ALL} ] Change permissions for tcpdump."
  sudo chmod +s /usr/bin/tcpdump && echo -e "[ ${COLOR_GREEN}OK${RESET_ALL} ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing  dsniff"
  sudo apt-get install -y dsniff >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing wireshark"
  sudo apt-get install -y wireshark >/dev/null 2>&1 && echo -e "[ Installed ]"
  echo -e "[ ${COLOR_LIGHT_RED}!${RESET_ALL} ] Change permissions for wireshark."
  sudo chmod +x /usr/bin/dumpcap && echo -e "[ ${COLOR_GREEN}OK${RESET_ALL} ]"

}

if [[ $1 == "--install" ]]; then

  command -v curl >/dev/null 2>&1 || {

      echo -en >&2 "Installing curl.";
      sudo apt install -y curl >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${RESET_ALL} ]"

  }

/usr/bin/clear

echo -e ${COLOR_GREEN}
curl https://hackerlabb.com/mess/hackinglabb/mode.txt
echo -e ${RESET_ALL}

  echo -e "Welcome to hacker lab."
  echo -e "[ ${COLOR_RED}!${RESET_ALL} ] This script can may take a while. \n"
  echo -e "Installing hacking tools.\n"

  read -p "Will you install hack tools? (Y/n):" Yn

if [[ $Yn =~ ^[Yy]$ ]]; then

  echo -e "\n [ ${COLOR_LIGHT_RED}!${RESET_ALL} ] Running \n"

  sleep 2
  echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Update system. \n"
  sudo apt-get update
  sleep 2
  install_hacktools;

  echo -e "\n All is done and installed."
  echo -e "Created by The Info Network Technologies"

elif [[ $Yn =~ ^[Nn]$ ]]; then
  echo -e "OK, Well done."
  exit 1;
else
  echo "You must answer y or n."
  exit 1;
fi
else
  echo "Test this $0 --install"
  exit 1;
fi
