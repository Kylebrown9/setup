#! /bin/bash

# UI and Quality of Life Improvements

## Redshift (flux-like night light package)
## See https://github.com/jonls/redshift
sudo apt-get install redshift-gtk
if [ -f "~/.config/redshift.conf" ]
then
  printf "Copied Redshift config to ~/.config/redshift.conf\n\n"
  cp ./redshift.conf ~/.config/redshift.conf
else
  printf "Redshift config is already present\n\n"
fi

## Fix Scrolling Direction
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
printf "Scrolling Direction Fixed\n\n"

# Terminal Setup

## Install Powerline (terminal prettiness)
sudo apt-get install fonts-powerline -y
sudo apt-get install powerline -y 
printf "Powerline Installed\n\n"

## Install Fira Code (fav font)
sudo apt-get install fonts-firacode -y
read -n 1 -p "In terminal preferences select 'Fira Mono Medium'"
printf "Finished Installing Fonts\n\n"

## Add Powerline to shell
if grep -q "POWERLINE-FINGERPRINT" ~/.bashrc;
then
  printf "Powerline already present in .bashrc\n\n"
else
  cat ./bashrc-addons/powerline.sh >> ~/.bashrc
  printf "Added Powerline to .bashrc\n\n"
fi

## Add upgrade_everything function to shell
if grep -q "UPGRADE-EVERYTHING-FINGERPRINT" ~/.bashrc;
then
  printf "upgrade_everything already present in .bashrc\n\n"
else
  cat ./bashrc-addons/upgrade-everything.sh >> ~/.bashrc
  printf "Added upgrade_everything to .bashrc\n\n"
fi

printf "OS and Shell setups complete!\n\n"

# Reboot Prompt
read -p "Would you like to reboot? [Y/n]: " should_reboot
if [[ $should_reboot == "" || $should_reboot =~ [Yy] ]]
then
  printf "Rebooting!\n"
  reboot
else
  printf "Completed, no reboot\n"
fi


