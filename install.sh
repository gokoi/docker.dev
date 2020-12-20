#!/bin/bash

set -e


apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages
apt update
apt install gh
go get -u github.com/kyoh86/richgo

su vscode
cp /tmp/home/* $HOME && chown -R vscode:vscode *
