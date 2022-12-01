#!/bin/sh
sudo apt-get install binutils
sudo apt-get install python-dev
sudo apt-get update
sudo apt-get install python3 python3-dev python3-pip git
pip3 install --user --upgrade git+https://github.com/arthaud/python3-pwntools.git
