#!/bin/bash

clear

sudo sleep 3
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

printf "\n\n"
printf "============================================Starting installation============================================\n"

sleep 1

# apt update & apt upgrade (silently)
printf "Retrieving latest (apt-get) package information... "
sudo apt-get update > /dev/null 2>&1

# Check if command is successful
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

sleep 1

printf "Upgrading apt-get packages... "
sudo apt-get upgrade -y > /dev/null 2>&1

# Check if command is successful
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

sleep 1

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

sleep 1

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

sleep 1

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

sleep 1

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

sleep 1

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

sleep 1

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

sleep 1

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

sleep 1

# Install Node.js via nvm (Node Version Manager)
printf "Installing Node.js via nvm... "
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash > /dev/null 2>&1
source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
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

# Install dbus-x11
printf "Installing dbus-x11... "
sudo apt-get install dbus-x11 -y > /dev/null 2>&1

# Check dbus-x11 is installed
dpkg -l | grep dbus-x11 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install ibus-bamboo
printf "Installing ibus-bamboo... "
sudo add-apt-repository --yes ppa:bamboo-engine/ibus-bamboo > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install ibus-bamboo -y > /dev/null 2>&1
ibus stop > /dev/null 2>&1
sleep 1
ibus-daemon -d > /dev/null 2>&1
sleep 1
ibus restart > /dev/null 2>&1
sleep 1
printf "export GTK_IM_MODULE=ibus\n" >> ~/.bashrc
printf "export QT_IM_MODULE=xim\n" >> ~/.bashrc
printf "export XMODIFIERS=@im=xim\n" >> ~/.bashrc
printf "export QT4_IM_MODULE=xim\n" >> ~/.bashrc
printf "export CLUTTER_IM_MODULE=xim\n" >> ~/.bashrc
sleep 1
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
sleep 1

# Check ibus-bamboo is installed
ibus list-engine | grep Bamboo > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install VLC Media Player
printf "Installing VLC Media Player... "
sudo apt-get install vlc -y > /dev/null 2>&1
sleep 1

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
dpkg -l | grep chrome > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Visual Studio Code
printf "Installing Visual Studio Code... "
wget -O vscode.deb https://update.code.visualstudio.com/latest/linux-deb-x64/stable > /dev/null 2>&1
sudo dpkg -i vscode.deb > /dev/null 2>&1
rm vscode.deb

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
sudo -E -u $USER gnome-session-quit