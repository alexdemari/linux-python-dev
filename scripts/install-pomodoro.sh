#!/usr/bin/env bash

POMODORO=$(which gnome-pomodoro)
if [ ${POMODORO} ]; then
    echo "Pomodoro is already installed."

	exit 0
fi

curl -L http://download.opensuse.org/repositories/home:kamilprusko/xUbuntu_16.04/Release.key | sudo apt-key add -
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:kamilprusko/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/gnome-pomodoro.list"
sudo apt update
sudo apt install gnome-shell-pomodoro -y
