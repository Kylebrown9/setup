# UPGRADE-EVERYTHING-FINGERPRINT
upgrade_everything () {
  printf "apt-get update -y\n"
  sudo apt-get update -y
  printf "\napt-get upgrade -y\n"
  sudo apt-get upgrade -y
  printf "\napt-get full-upgrade -y\n"
  sudo apt-get full-upgrade -y
  printf "\napt-get dist-upgrade -y\n"
  sudo apt-get dist-upgrade -y
  printf "\napt-get clean -y\n"
  sudo apt-get clean -y
  printf "\napt-get autoremove -y\n"
  sudo apt-get autoremove -y
}

