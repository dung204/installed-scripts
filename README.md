# Install Scripts for Different OSes

### Scripts that automatically install needed software for operating systems

<hr />

## Table of Contents

- [Packages to be installed](#packages)
- [Installation](#installation)
  - [Windows](#windows-install)
  - [Linux](#linux-install)
  - [MacOS](#macos-install)
- [Todos](#todos)
  - [Windows](#windows-todos)
  - [Linux](#linux-todos)
  - [MacOS](#macos-todos)

<a id="packages"></a>

## Packages to be installed

- Chocolatey: a package manager for installing other packages
- Unikey: a Vietnamese input method
- Git: a version control system
- Google Chrome: a web browser
- NodeJS: a JavaScript runtime environment
- yarn: a node package manager
- OpenJDK (java): an open-source Java Developer Kit & Runtime
- MinGW: a collection of GNU libraries for windows
- WSL: Windows Subsystem for Linux (required a restart after installation, and Ubuntu is also installed)

## Installation

<a id="windows-install"></a>

### Windows

Open Command Prompt or Powershell **<ins>as Administrator</ins>**, and run one of these commands:

cmd.exe:

```bat
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dung204/installed-scripts/main/windows/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

powershell.exe:

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dung204/installed-scripts/main/windows/install.ps1'))
```

**Warning**: Downloading the script individually or cloning this repo is not recommended since it's easier to use below commands to run the script under administrative privileges.

<a id="linux-install"></a>

### Linux

Working in progress ...

<a id="macos-install"></a>

### MacOS

Working in progress ...

## Todos

<a id="windows-todos"></a>

### Windows

- Run Windows Update and update all packages to the latest version
- Set Google Chrome as default browser
- Check to see if the packages can run perfectly
- Run VSCode to install extensions and change the settings
- Restart to finish WSL installation
- Run WSL to install dependencies for development
- To be continued ...

<a id="linux-todos"></a>

### Linux

Working in progress ...

<a id="macos-todos"></a>

### MacOS

Working in progress
