#!/usr/bin/env bash

HEROKU=$(which heroku)
if [ ${HEROKU} ]; then
        echo "Heroku is already installed."
	exit 0
fi

APT="sudo apt"

echo "deb https://cli-assets.heroku.com/branches/stable/apt ./" | sudo tee /etc/apt/sources.list.d/heroku-apps.list
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
${APT} update
${APT} install heroku -y
