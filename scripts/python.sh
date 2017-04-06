#!/usr/bin/env bash

CURRENT_DIR=$(pwd)
APT_INSTALL='sudo apt install -y'
WGET='sudo wget'
PYTHON36=$(which python3.6)

if [ z ${PYTHON36} ] ; then
	cd /usr/src
	${WGET} https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
	${APT_INSTALL} -y build-essential checkinstall
	${APT_INSTALL} -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
	sudo ./configure --enable-optimizations --prefix=/usr/local --exec-prefix=/usr/local
	sudo make -j8 altinstall

	cd ${CURRENT_DIR}
fi
