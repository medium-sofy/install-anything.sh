# This will basically be the install-anything.sh, the idea behind it is to reduce the time needed to install software every time you set up a new OS,
# whether it be windows linux or mac.
# when you run the script, you choose your operating sytem and the packaging format for your OS (if using Linux)
# then a list of software packages is displayed with a number associated with each package,
# you enter the number (or numbers) of the package (or Packages),
# and the script installs it using the best method for your OS,
# Community contribution is Important to add new packages, maintain the best methods of installing software, and to ensure that software is up to date and secure

# Currently only rpm based systems (Fedora, RHEL, OpenSUSE...etc) are supported.
# and the script installs all the apps listed sequentially, sooo, need to also fix that. but hey, everything has a start, right?

# GUI APPs:

# 1- VS code (rpm)
# 2- Obsidian  (appimage)
# 3- Blackbox terminal (flatpak)
# 4- chrome browser (rpm)
# 5- Beekeeper studio (appimage)
# 6- Motrix (rpm)
# 7- Stacer (dnf package manager)
# 8- Thunderbird (dnf package manager)
# 9- Syncthing (dnf package manager)

# Terminal APPs:

# 1- Git (dnf package manager)
# 2- PHP (dnf package manager)
# 3- NeoVim (Official website)

#!/bin/bash

# Take an argument from the user to determine whether the system uses .rpm or .deb packages

read -p "Enter the packaging format for your linux distribution: 1-rpm 2-deb : " sys_package

echo "Installing $sys_package Packages"

if [ $sys_package == "rpm" ];
  then

  echo "****** Installing VS code.$sys_package *******"

      sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
      sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
      dnf check-update
      sudo dnf install code


  echo "******* Installing Obsidian.$sys_package *******"
      wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/Obsidian-1.5.3.AppImage

  echo "******* Installing BeekeeperStudio.appimage *******"     
      wget https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v4.1.10/Beekeeper-Studio-4.1.10.AppImage

  echo "******* Installing Motrix Download Manager.$sys_package *******"     
      wget https://github.com/agalwood/Motrix/releases/download/v1.8.19/Motrix-1.8.19.x86_64.rpm

  echo "******* Installing qbittorrent.$sys_package *******"
      sudo dnf install qbittorrent

  echo "******* Installing thunderbird.$sys_package *******"
      sudo dnf install thunderbird

  echo "******* Installing Chrome browser *******"
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

  echo "******* Installing Stacer for Fedora *******"
      sudo dnf install stacer

  echo "******* Installing Syncthing for Fedora *******"
      sudo dnf install syncthing

  echo "******* Installing PHP for Fedora *******"
      sudo dnf install php

  echo "******* Installing NeoVim for Fedora *******"
      wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz

   echo "******* Installing git for Fedora *******"
      sudo dnf install git

  echo "******* Installing Blackbox terminal for Fedora *******"
      flatpak install flathub com.raggesilver.BlackBox

else

    #Download for ubuntu-based distros WIP

fi