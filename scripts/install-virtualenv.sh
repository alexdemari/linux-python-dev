#!/usr/bin/env bash

VIRTUALENV=$(which virtualenv)
BIN_PATH=~/bin

if [ ${VIRTUALENV} ]; then
        echo "Virtualenv is already installed."
	exit 0
fi

sudo pip3.6 install virtualenv

mkdir -p ${BIN_PATH}
cp $(pwd)/scripts/virtualenv-auto-activate.sh ${BIN_PATH} && \

echo "source ${BIN_PATH}/virtualenv-auto-activate.sh" >> ~/.bashrc
source ~/.bashrc
