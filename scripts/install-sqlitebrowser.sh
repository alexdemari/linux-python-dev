#!/usr/bin/env bash

SQLITEBROWSER=$(which sqlitebrowser)
if [ ${SQLITEBROWSER} ]; then
    echo "SQLiteBrowser is already installed."

	exit 0
fi

sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser
sudo apt update
sudo apt install sqlitebrowser -y
