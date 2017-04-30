#!/usr/bin/env bash

GITLAB_RUNNER=$(which gitlab-runner)
if [ ${GITLAB_RUNNER} ]; then
        echo "Gitlab Runner is already installed."
	exit 0
fi

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-ci-multi-runner -y
