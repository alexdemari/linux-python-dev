TARGET = /usr/local/bin
INSTALL = install -m 0755

install: all-in-one postgres python virtualenv pycharm

all-in-one:
    $(INSTALL) scripts/all_in_one.sh $(TARGET)/run-linux-setup

postgres:
    $(INSTALL) scripts/postgres.sh $(TARGET)/install-postgres

python:
    $(INSTALL) scripts/python.sh $(TARGET)/install-python

virtualenv:
    $(INSTALL) scripts/virtualenv.sh $(TARGET)/install-virtualenv

pycharm:
    $(INSTALL) scripts/pycharm.sh $(TARGET)/install-pycharm

clean:
    rm -f $(TARGET)/run-linux-setup
    rm -f $(TARGET)/install-postgres
    rm -f $(TARGET)/install-python
    rm -f $(TARGET)/install-virtualenv
    rm -f $(TARGET)/install-pycharm

.PHONY: clean install