#!/usr/bin/env bash

PYCHARM=$(which pycharm)
if [ ${PYCHARM} ]; then
        echo "PyCharm is already installed."
	exit 0
fi

APT="sudo apt"
echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" | sudo tee /etc/apt/sources.list.d/getdeb-apps.list
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
${APT} update
${APT} install pycharm -y
