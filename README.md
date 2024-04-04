# Install Scripts for Different OSes

### Scripts that automatically install needed software for operating systems

<hr />

## Table of Contents

- [1. Packages to be installed](#1-packages-to-be-installed)
- [2. Installation](#2-installation)
  - [2.1. Windows](#21-windows)
  - [2.2. Linux](#22-linux)
  - [2.3 MacOS](#23-macos)
- [3. Todos](#3-todos)
  - [3.1. Windows](#31-windows)
  - [3.2. Linux](#32-linux)
  - [3.3. MacOS](#33-macos)

## 1. Packages to be installed

- Chocolatey: a package manager for installing other packages **(Windows only)**
- Unikey: a Vietnamese input method
- Git: a version control system
- Google Chrome: a web browser
- NodeJS: a JavaScript runtime environment
- yarn: a node package manager **(in Windows, may require a shell restart to use)**
- OpenJDK (java): an open-source Java Developer Kit & Runtime
- MinGW: a collection of GNU libraries for Windows **(Windows only)**
- WSL: Windows Subsystem for Linux **(required a restart after installation, and Ubuntu is also installed, Windows only)**
- Python interpreter

## 2. Installation

### 2.1. Windows

Open Command Prompt or Powershell **<ins>as Administrator</ins>**, and run one of these commands:

Using Command Prompt (`cmd.exe`):

```bat
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dung204/installed-scripts/main/windows/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

Using Powershell (`powershell.exe`):

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dung204/installed-scripts/main/windows/install.ps1'))
```

**Warning**: Downloading the script individually or cloning this repo is not recommended since it's easier to use below commands to run the script under administrative privileges.

### 2. Linux

#### 2.1. Ubuntu

Using `wget`:

```bash
wget -O - https://raw.githubusercontent.com/dung204/installed-scripts/main/linux/ubuntu/install.sh | sudo bash
```

Using `curl`:

```bash
curl -s https://raw.githubusercontent.com/dung204/installed-scripts/main/linux/ubuntu/install.sh | sudo bash
```

### 3. MacOS

Working in progress ...

## 4. Todos

### 4.1. Windows

- Run Windows Update and update all packages to the latest version
- Set Google Chrome as default browser
- Check to see if the packages can run perfectly
- Run VSCode to install extensions and change the settings
- Restart to finish WSL installation
- Run WSL to install dependencies for development
- To be continued ...

### 4.2. Linux

Working in progress ...

### 4.3. MacOS

Working in progress
