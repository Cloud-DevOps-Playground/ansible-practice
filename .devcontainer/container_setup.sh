#!/usr/bin/env bash

apt-get update
apt-get install -y git locales
sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
echo 'LANG=en_US.UTF-8' > /etc/default/locale
locale-gen

python -m ensurepip --upgrade
python -m pip install --upgrade pip
python -m pip install --upgrade ansible
