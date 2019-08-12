#!/bin/bash

set -euo pipefail

install_ansible() {
  log "installing/upgrading Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  log "installing ansible"
  brew install ansible
}

log() {
  echo
  echo "----------------------------------------------------------------------"
  echo "$1"
  echo "----------------------------------------------------------------------"
  echo
}

log "Oh boy, here I go installin' again!"

if ! which ansible-playbook > /dev/null 2>&1 ; then
  echo "ansible-playbook not found on \$PATH, installing"
  install_ansible
fi

ansible-playbook -i "localhost," --con local playbook.yml
