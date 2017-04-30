#!/usr/bin/env bash

POSTGRES=$(which psql)
if [ ${POSTGRES} ]; then
        echo "Postgres is already installed."
	exit 0
fi

sudo apt install postgresql postgresql-contrib -y
