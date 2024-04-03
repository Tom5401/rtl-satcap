#!/bin/bash

HOME_DIR=/home/satdev
cd rtl-satcap

# Install packages
sudo sh ./install_packages.sh

# wxtoimg accept terms
(sleep 2; echo yes) | wxtoimg

# setup predict
sudo sh ./update_tle.sh


