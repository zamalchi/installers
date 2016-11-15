#!/bin/bash

INSTALL_PATH=${1}

sudo yum install python git

sudo yum install python-pip
sudo pip install --upgrade pip

sudo pip install markdown
sudo yum install pycrypto

git clone https://www.github.com/zamalchi/hoursapp.git ${INSTALL_PATH}

cd ${INSTALL_PATH}
./launcher.sh
