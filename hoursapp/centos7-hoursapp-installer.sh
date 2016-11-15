#!/bin/bash

if [ -z ${1} ]; then
  INSTALL_PATH="`pwd`/hoursapp"
else
  INSTALL_PATH=${1}
fi

sudo yum -y install python git

sudo yum -y install python-pip
sudo pip install --upgrade pip

sudo pip install markdown
sudo yum -y install pycrypto

git clone https://www.github.com/zamalchi/hoursapp.git ${INSTALL_PATH}

chown ${USER}:${USER} ${INSTALL_PATH}

cd ${INSTALL_PATH}
./launcher.sh
