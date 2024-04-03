#!/bin/bash

HOME_DIR=$(pwd)
cd rtl-satcap

# Install packages
sudo sh ./install_packages.sh

# wxtoimg accept terms
(sleep 2; echo yes) | wxtoimg

# setup predict
wget "https://celestrak.org/NORAD/elements/gp.php?GROUP=weather&FORMAT=tle" -O config/predict/predict.tle
cp config/predict/predict.tle $HOME_DIR/.predict/predict.tle
cp config/predict/predict.qth $HOME_DIR/.predict/predict.qth

