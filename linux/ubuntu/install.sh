#!/bin/bash

# Check if this script is running as root
if [ "$EUID" -ne 0 ]
  then printf "\u001b[31mPlease run as root\u001b[37m\n"
  exit
fi

clear
printf "
██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗         ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║         ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║         ███████╗██║     ██████╔╝██║██████╔╝   ██║   
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║         ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗    ███████║╚██████╗██║  ██║██║██║        ██║   
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   

"

printf "============================================by \u001b[31mMantrilogix\u001b[37m============================================\n"

printf "\n\n"

printf "Author Github URL: \u001b[34mhttps://github.com/dung204\u001b[37m\n"
printf "Repository Github URL: \u001b[34mhttps://github.com/dung204/installed-scripts\u001b[37m\n"

printf "OS: \u001b[31mUbuntu\u001b[37m\n"

# apt update & apt upgrade (silently)
printf "Retrieving latest (apt-get) package information... "
sudo apt-get update > /dev/null 2>&1

# Check if command is successful
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

printf "Upgrading apt-get packages... "
sudo apt-get upgrade -y > /dev/null 2>&1

# Check if command is successful
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install git
printf "Installing git... "
sudo apt-get install git -y > /dev/null 2>&1

# Check git is installed
git --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install curl
printf "Installing curl... "
sudo apt-get install curl -y > /dev/null 2>&1

# Check curl is installed
curl --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install wget
printf "Installing wget... "
sudo apt-get install wget -y > /dev/null 2>&1

# Check wget is installed
wget --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install vim
printf "Installing vim... "
sudo apt-get install vim -y > /dev/null 2>&1

# Check vim is installed
vim --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install htop
printf "Installing htop... "
sudo apt-get install htop -y > /dev/null 2>&1

# Check htop is installed
htop --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install python3
printf "Installing python3... "
sudo apt-get install python3 -y > /dev/null 2>&1

# Check python3 is installed
python3 --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install openjdk-17 (Java 17)
printf "Installing openjdk... "
sudo apt-get install openjdk-17-jdk -y > /dev/null 2>&1

# Check openjdk is installed
java -version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Node.js via nvm (Node Version Manager)
printf "Installing Node.js via nvm... "
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash > /dev/null 2>&1
source ~/.bashrc
nvm install --lts > /dev/null 2>&1

# Check Node.js is installed
node --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install yarn via npm (Node Package Manager)
printf "Installing yarn via npm... "
npm i -g yarn > /dev/null 2>&1

# Check yarn is installed
yarn --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Docker Engine
printf "Installing Docker Engine... "

# Add Docker's official GPG key:
sudo apt-get update > /dev/null 2>&1
sudo apt-get install ca-certificates curl -y > /dev/null 2>&1
sudo install -m 0755 -d /etc/apt/keyrings > /dev/null 2>&1
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc > /dev/null 2>&1
sudo chmod a+r /etc/apt/keyrings/docker.asc > /dev/null 2>&1

# Add the repository to Apt sources:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y > /dev/null 2>&1

# Check Docker Engine is installed
docker --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install ibus-bamboo
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends
ibus exit > /dev/null 2>&1
sleep 1
ibus-daemon -d > /dev/null 2>&1
sleep 1
ibus restart > /dev/null 2>&1
sleep 1
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
printf "
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=xim
export XMODIFIERS=@im=xim
export QT4_IM_MODULE=xim
export CLUTTER_IM_MODULE=xim
" >> ~/.bashrc

# Check ibus-bamboo is installed
ibus list-engine | grep -q "Unikey" > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install VLC Media Player
printf "Installing VLC Media Player... "
sudo apt-get install vlc -y > /dev/null 2>&1


# Check VLC Media Player is installed
vlc --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Google Chrome
printf "Installing Google Chrome... "
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i chrome.deb > /dev/null 2>&1
rm chrome.deb > /dev/null 2>&1

# Check Google Chrome is installed
dpkg -l | grep google-chrome-stable > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Visual Studio Code
printf "Installing Visual Studio Code... "
wget -O vscode.deb https://update.code.visualstudio.com/latest/linux-deb-x64/stable > /dev/null 2>&1
sudo dpkg -i vscode.deb > /dev/null 2>&1

# Check Visual Studio Code is installed
code --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Print finish message
printf "\n\n"
printf "\u001b[32m=================================Installation completed successfully==================================\u001b[37m\n"

# Logout to apply changes
printf "Logging out to apply changes in 3 seconds... "
sleep 3
gnome-session-quit --no-prompt