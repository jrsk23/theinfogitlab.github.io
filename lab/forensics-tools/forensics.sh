#!/bin/bash

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

if [[ $EUID -ne 0 ]]; then
    echo "[ ! ] Run this script with sudo."
    exit 1;
fi

install_forensic(){

    echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing forensic tools."
    sudo apt-get install -y foremost forensic-artifacts forensics-all forensics-all-gui >/dev/null 2>&1 && echo "[ Step 1 of 2 completed ]"
    echo -e "[ ${COLOR_LIGHT_GREEN}+${RESET_ALL} ] Installing more forensic tools."
    sudo apt-get install -y forensics-colorize forensics-extra forensics-extra-gui forensics-full >/dev/null 2>&1 && echo "[ Step 2 of 2 completed ]"

}

if [[ $1 == "--forensic" ]]; then

  command -v curl >/dev/null 2>&1 || {

      echo -en >&2 "Installing curl.";
      sudo apt install -y curl >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${RESET_ALL} ]"

  }

  command -v wget >/dev/null 2>&1 || {

      echo -en >&2 "Installing wget.";
      sudo apt install -y wget >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${RESET_ALL} ]"

  }

  command -v figlet >/dev/null 2>&1 || {

      echo -en >&2 "Installing figlet.";
      sudo apt install -y figlet >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${RESET_ALL} ]"

  }

/usr/bin/clear

  echo -e ${COLOR_BLUE}
  curl https://hackerlabb.com/mess/forensics/mode.txt
  echo -e ${RESET_ALL}

  echo -e "Welcome to forensics mode."
  echo -e "[ ${COLOR_RED}!${RESET_ALL} ] This This script here may take a while...\n"

  echo -e "Forensics does this: \n"
  echo -e "Installing wget, curl & figlet.."
  echo -e "Installing foremost, forensic-artifacts, forensics-all, forensics-all-gui."
  echo -e "Installing forensics-colorize forensics-extra forensics-extra-gui forensics-full."
  echo -e "And setting up forensics mode.. \n"

read -p "Will you install forensics tools mode? (Y/n):" Yn

if [[ $Yn =~ ^[Yy]$ ]]; then

  echo -e "\n [ ${COLOR_GREEN}?${RESET_ALL} ] Checking for packages... \n";
  sleep 2
  install_forensic;

figlet -f big All is done.

elif [[ $Yn =~ ^[Nn]$ ]]; then
  echo "OK, Have nice day.."
  exit 1;
else
  echo "[ ! ] You must answer y or n."
  exit 1;
fi
else
  echo "[ ? ] Test this $0 --forensic"
  exit 1;
fi
