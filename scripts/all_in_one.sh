#!/usr/bin/env bash

# Update/Upgrade
sudo apt update && sudo apt upgrade -y

# PyCharm
install-pycharm

# Postgres
install-postgres

# Python 3.6.1
install-python361

# Set-Up virtualenv
install-virtualenv
