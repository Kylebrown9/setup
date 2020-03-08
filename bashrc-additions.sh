if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi

upgrade_everything () {
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get full-upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get clean -y
  sudo apt-get autoremove -y
}
