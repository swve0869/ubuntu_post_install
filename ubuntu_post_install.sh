#!/bin/sh

apt-get update

# Remove bloatware
sudo apt --purge remove -y yelp*
sudo apt --purge remove -y seahorse
sudo apt --purge remove -y gnome-contacts
sudo apt --purge remove -y geary
sudo apt --purge remove -y libreoffice*
sudo apt --purge remove -y gnome-weather
sudo apt --purge remove -y ibus-mozc
sudo apt --purge remove -y mozc-utils-gui
sudo apt --purge remove -y gucharmap
sudo apt --purge remove -y simple-scan
sudo apt --purge remove -y popsicle
sudo apt --purge remove -y popsicle-gtk
sudo apt --purge remove -y totem*
sudo apt --purge remove -y lm-sensors*
sudo apt --purge remove -y xfburn
sudo apt --purge remove -y xsane*
sudo apt --purge remove -y hv3
sudo apt --purge remove -y exfalso
sudo apt --purge remove -y parole
sudo apt --purge remove -y quodlibet
sudo apt --purge remove -y xterm
sudo apt --purge remove -y redshift*
sudo apt --purge remove -y drawing
sudo apt --purge remove -y hexchat*
sudo apt --purge remove -y thunderbird*
sudo apt --purge remove -y transmission*
sudo apt --purge remove -y transmission-gtk*
sudo apt --purge remove -y transmission-common*
sudo apt --purge remove -y webapp-manager
sudo apt --purge remove -y celluloid
sudo apt --purge remove -y hypnotix
sudo apt --purge remove -y rhythmbox*
sudo apt --purge remove -y librhythmbox-core10*
sudo apt --purge remove -y rhythmbox-data
sudo apt --purge remove -y mintbackup
sudo apt --purge remove -y mintreport
sudo apt --purge remove -y aisleriot
sudo apt --purge remove -y gnome-mahjongg
sudo apt --purge remove -y gnome-mines
sudo apt --purge remove -y quadrapassel
sudo apt --purge remove -y gnome-sudoku
sudo apt --purge remove -y cheese*
sudo apt --purge remove -y pitivi
sudo apt --purge remove -y gnome-sound-recorder
sudo apt --purge remove -y remmina*
sudo apt --purge remove -y gimp*
sudo apt --purge remove -y zorin-windows-app-support-installation-shortcut
sudo apt --purge remove -y firefox-esr
sudo apt --purge remove -y gnome-todo
sudo apt --purge remove -y brasero*
sudo apt --purge remove -y evolution*
sudo apt --purge remove -y gnome-photos*

# System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# Flatpak Support
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update -y

# install slimbook battery optimizer
sudo add-apt-repository ppa:slimbook/slimbook
sudo apt update  
sudo apt install slimbookbattery



#dependencies
sudo apt install snapd
sudo apt install flatpak

sudo apt install python3
sudo apt install 
sudo apt install -y git



#npm and react
sudo apt install npm
sudo npm -g install create-react-app




# applications 
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub org.chromium.Chromium -y

sudo snap install --classic code # or code-insiders
snap install spotify
snap install nordvpn

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo apt install -y gparted
sudo apt install -y synaptic
sudo apt install -y htop
sudo apt install -y net-tools
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y flameshot
sudo apt install -y adb
sudo apt install -y scrcpy
sudo apt install -y vlc
sudo apt install -y numlockx
sudo apt install -y inetutils-traceroute
sudo apt install -y tldr



# wget Apps
## BleachBit
wget -c "https://www.bleachbit.org/download/file/t?file=bleachbit_5.0.0-0_all_ubuntu2504.deb"

# gnome stuff
sudo apt install -y gnome-tweaks
sudo apt install -y dconf-editor



    # Snap Update
sudo snap refresh
    # Snap Clean Up
sudo rm -rf /var/lib/snapd/cache/*

    # Flatpak Update
flatpak update -y
    # Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y




# Finishing Things Up
## System Update and Upgrade
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
## System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script