#! /bin/bash
upgrade_everyting

# Firefox Setup
firefox about:preferences
read -n 1 -p "Disable 'Ctrl+Tab cycles through tabs in recently used'"
read -n 1 -p "Install Ublock"
read -n 1 -p "Install Disconnect"
firefox https://www.dashlane.com/download &
read -n 1 -p "Install Dashlane"

# PureVPN
read -n 1 -p "Install PureVPN"

# Snap Apps
sudo apt-get install snapd -y 

sudo snap install code --classic
echo "Visual Studio Code IDE Installed"
sudo snap install discord
echo "Discord Messaging App Installed"
sudo snap install spotify
echo "Spotify Music App Installed"
sudo snap install insomnia
echo "Insomnia REST Client Installed"

# Other Apps
sudo apt-get install vlc -y
echo "VLC Media Player Installed"

# GIT Key Setup - create a new ssh key, open github)
# firefox https://github.com/settings/keys &
# cat /dev/zero | ssh-keygen -q -N ""
# echo -e "\n\n"
# cat ~/.ssh/id_rsa.pub
# echo -e "\n\n"
# read -n 1 -p "Copy this as your new key to finish Github setup"

upgrade_everything 

# Finished
echo "\n\n\nThat's all folks!"