#! /bin/bash

# Powerline (terminal prettiness)
# Get powerline fonts and then the package
sudo apt-get install fonts-powerline -y
sudo apt-get install powerline -y 
echo "Powerline Installed"

# Fira Code (fav font)
sudo apt install fonts-firacode -y
read -n 1 -p "In terminal preferences select 'Fira Mono Medium'"
echo "Finished Installing Fonts!"

# Add Powerline and upgrade_everything function to shell
cat ./bashrc-additions.sh >> ~/.bashrc
echo "Added Powerline to .bashrc"
echo "Added upgrade_everything to .bashrc"

# Fix Scrolling Direction
echo "Go to Settings -> Devices -> Mouse & Touchpad"
read -n 1 -p "Enable `Natural Scrolling - Scrolling moves the content, not the view`"