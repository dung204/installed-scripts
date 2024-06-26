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
sudo groupadd docker > /dev/null 2>&1
sudo usermod -aG docker $USER > /dev/null 2>&1

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

# Install ibus-unikey
printf "Installing ibus-unikey... "
sudo apt-get install ibus-unikey -y > /dev/null 2>&1
ibus restart > /dev/null 2>&1
sleep 1
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Unikey')]" > /dev/null 2>&1

# Check ibus-unikey is installed
dpkg -l | grep ibus-unikey > /dev/null 2>&1
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

# Install Thorium Browser
printf "Installing Thorium Browser... "
wget -O thorium.deb https://github.com/Alex313031/thorium/releases/download/M122.0.6261.132/thorium-browser_122.0.6261.132_amd64.deb
sudo dpkg -i thorium.deb > /dev/null 2>&1
rm thorium.deb > /dev/null 2>&1

# Check Thorium Browser is installed
dpkg -l | grep thorium-browser > /dev/null 2>&1
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

# Install zsh
printf "Installing zsh... "
sudo apt-get install zsh -y > /dev/null 2>&1
sudo usermod --shell $(which zsh) $USER > /dev/null 2>&1

# Check zsh is installed
zsh --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Oh My Zsh
printf "Installing Oh My Zsh... "
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1

# Check Oh My Zsh is installed
ls -a ~ | grep .oh-my-zsh > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install Powerlevel10k theme
printf "Installing Powerlevel10k theme... "
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k > /dev/null 2>&1

# Check Powerlevel10k theme is installed
ls -a ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes | grep powerlevel10k > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Install FiraCode Nerd Font
printf "Installing FiraCode Nerd Font... "
sudo apt install unzip -y > /dev/null 2>&1
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.0/FiraCode.zip > /dev/null 2>&1
unzip FiraCode.zip -d ~/.fonts/FiraCodeNerdFont > /dev/null 2>&1
rm FiraCode.zip > /dev/null 2>&1
fc-cache -f -v > /dev/null 2>&1

# Check FiraCode Nerd Font is installed
fc-list | grep FiraCode > /dev/null 2>&1
if [ $? -eq 0 ]; then
  printf "\u001b[32mSUCCESS\u001b[37m\n"
else
  printf "\u001b[31mFAILED\u001b[37m\n"
fi

# Retrieve dotfiles
printf "Retrieving dotfiles... "
git clone https://github.com/dung204/linux-dotfiles.git ~/linux-dotfiles > /dev/null 2>&1
for filename in `find ~/linux-dotfiles/ -not -path '*/.git/*' -type f -printf '%f\n'`
do
  ln -sf ~/linux-dotfiles/$filename ~/$filename
done

# Check dotfiles are retrieved
check = true
for filename in `find ~/linux-dotfiles/ -not -path '*/.git/*' -type f -printf '%f\n'`
do
  if [ ! -f ~/$filename ]; then
    check = false
    break
  fi
done

if [ $check = true ]; then
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
sudo -E -u $USER gnome-session-quit --no-prompt