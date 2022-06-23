# Install scripts for Windows
# Author: dung204
# --------------------------------

# Packages to be installed: Chocolatey, Unikey, Git, Google Chrome, NodeJS, yarn, OpenJDK (java), MinGW (gcc), WSL 

# --- Check to see if this script is being run as admin
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())

$RunningAsAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if( $RunningAsAdmin -eq $False)
{
	Write-Host "ERROR: This script must be run as administrator" -Foreground "Red" -Background "Yellow"
	pause # Press any key to continue ...
	exit
}


# --- Install chocolatey package manager
Write-Host "Installing Chocolatey ..." -Foreground "Green"
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 
iex ((New-Object System.Net.WebClient).DownloadString("https://community.chocolatey.org/install.ps1"))
refreshenv

# --- Install Git
Write-Host "Installing git ..." -Foreground "Green"
choco install -y git
refreshenv

# Add git binary folder to PATH so that git can be used in the terminal
$GitBinPath = (Resolve-Path -Path "$env:UserProfile\..\..\Program Files\Git\bin").Path
$env:PATH += ";$GitBinPath"
refreshenv

# Set name and email for git so that git can commit, push, pull, ...
git config --global user.name dung204
git config --global user.email acezombiev4@gmail.com

# --- Install Unikey
Write-Host "Installing Unikey ..." -Foreground "Green"
choco install -y unikey
Copy-Item "$env:UserProfile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Unikey\UnikeyNT.lnk" -Destination "$env:UserProfile\Desktop" # Copy unikey shortcut to desktop

# --- Install Google Chrome
Write-Host "Installing Google Chrome ..." -Foreground "Green"
choco install -y googlechrome

# --- Install VSCode
Write-Host "Installing Visual Studio Code ..." -Foreground "Green"
choco install -y vscode
refreshenv

# --- Install NodeJS LTS
Write-Host "Installing NodeJS LTS ..." -Foreground "Green"
choco install -y nodejs-lts
refreshenv

# Add node binary folder to PATH (same as git)
$NodeBinPath = (Resolve-Path -Path "$env:UserProfile\..\..\Program Files\nodejs").Path
$env:PATH += ";$NodeBinPath"
refreshenv

# --- Install yarn
Write-Host "Installing yarn ..."
cmd.exe /c "npm install -g yarn"

# --- Install OpenJDK (java)
Write-Host "Installing OpenJDK (java) ..." - Foreground "Green"
choco install -y openjdk
$JDKBinPath = (Resolve-Path -Path "$env:UserProfile\..\..\Program Files\OpenJDK\*\bin").Path
$env:PATH += ";$JDKBinPath"
refreshenv

# --- Install MinGW (gcc, g++ and gdb)
Write-Host "Install MinGW (gcc, g++ and gdb) ..." -Foreground "Green"
choco install -y mingw
refreshenv

# --- Install WSL (Windows Subsystem for Linux)
Write-Host "Install WSL (and Ubuntu as well) ..." -Foreground "Green"
wsl --install # Also installed Ubuntu
Write-Host "Please restart to start using WSL"
