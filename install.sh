#!/bin/bash

set -e

apt-get -y update
apt-get -y install software-properties-common
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages
apt-get -y update
apt-get -y install gh

su vscode
go get -u github.com/kyoh86/richgo
cp /tmp/home/* $HOME && chown -R vscode:vscode *
