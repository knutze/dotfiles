#!/usr/bin/env bash
set -eo pipefail

sudo='sudo -E'

if ! type ansible; then

if type pacman; then
  pacman -S ansible
elif type apt-get; then
  $sudo apt-get update
  $sudo apt-get -y install software-properties-common
  $sudo apt-add-repository -y ppa:ansible/ansible
  $sudo apt-get update
  $sudo apt-get -y install ansible
elif type yum; then
  $sudo yum clean all
  $sudo yum install -y ansible
fi

fi

ansible-playbook -i hosts setup.yml
source ~/.bashrc
