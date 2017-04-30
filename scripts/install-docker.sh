#!/usr/bin/env bash

DOCKER=$(which docker)
if [ ${DOCKER} ]; then
        echo "Docker is already installed."

	exit 0
fi

APT="sudo apt"

${APT} install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
${APT} update
${APT} install docker-ce -y
