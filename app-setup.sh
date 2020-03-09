#! /bin/bash
./upgrade-everything.sh

# Firefox Setup
firefox about:preferences &> /dev/null &
firefox https://addons.mozilla.org/en-US/firefox/addon/ublock-origin &> /dev/null &
firefox https://addons.mozilla.org/en-US/firefox/addon/disconnect &> /dev/null &
firefox https://www.dashlane.com/download &> /dev/null &
read -n 1 -p "Disable 'Ctrl+Tab cycles through tabs in recently used'"
read -n 1 -p "Install Ublock"
read -n 1 -p "Install Disconnect"
read -n 1 -p "Install Dashlane"

# PureVPN
# read -n 1 -p "Install PureVPN"

# Snap Apps
sudo apt-get install snapd -y 

sudo snap install code --classic
printf "Visual Studio Code IDE Installed\n"
sudo snap install discord
printf "Discord Messaging App Installed\n"
sudo snap install spotify
printf "Spotify Music App Installed\n"
sudo snap install insomnia
printf "Insomnia REST Client Installed\n\n"

# Other Apps
sudo apt-get install vlc -y
printf "VLC Media Player Installed\n\n"

# GIT Key Setup - create a new ssh key, open github)
# firefox https://github.com/settings/keys &
# cat /dev/zero | ssh-keygen -q -N ""
# printf -e "\n\n"
# cat ~/.ssh/id_rsa.pub
# printf -e "\n\n"
# read -n 1 -p "Copy this as your new key to finish Github setup"

./upgrade-everything.sh

# Finished
printf "\nThat's all folks!\n"
