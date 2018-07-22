#!/usr/bin/env bash

set -xe

sudo apt-get -y install git

sudo apt-get update
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

