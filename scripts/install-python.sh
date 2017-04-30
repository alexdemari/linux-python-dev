#!/usr/bin/env bash

PYTHON36=$(which python3.6)
if [ ${PYTHON36} ]; then
	echo "Python 3.6 is already installed."
	exit 0
fi

CWD=$(pwd)
MAKE="sudo make"

sudo -H pip3 install virtualenv
sudo apt install build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev \
libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
sudo tar xvzf Python-3.6.1.tgz
cd Python-3.6.1
sudo ./configure --enable-optimizations --prefix=/usr/local --exec-prefix=/usr/local
${MAKE} altinstall -j8
cd ${CWD}
