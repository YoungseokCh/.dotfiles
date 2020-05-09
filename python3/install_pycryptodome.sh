#!/bin/sh
sudo apt-get install build-essential python3-dev
pip install pycryptodomex
python3 -m Cryptodome.SelfTest
