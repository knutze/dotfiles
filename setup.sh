#!/usr/bin/env bash

set -xe

if ! type ansible; then
  if type apt-get; then
    sudo apt-get update
    sudo apt-get -y install software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get -y install ansible
  elif type yum; then
    sudo yum clean all
    sudo yum install -y ansible
  fi
fi

ansible-playbook -i hosts setup.yml -K

vim +PlugInstall +qall
