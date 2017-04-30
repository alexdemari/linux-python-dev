install: postgres python virtualenv pycharm docker gitlab-runner gitconfig

postgres:
	bash scripts/install-postgres.sh

python:
	bash scripts/install-python.sh

virtualenv:
	bash scripts/install-virtualenv.sh

pycharm:
	bash scripts/install-pycharm.sh

docker:
	bash scripts/install-docker.sh

gitlab-runner:
	bash scripts/install-gitlab-runner.sh

gitconfig:
	install -m 0644 scripts/gitconfig ~/.gitconfig

.PHONY: install
