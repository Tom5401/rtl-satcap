#!/bin/bash

# Install packages
sudo sh ./install_packages.sh

# wxtoimg accept terms
(sleep 2; echo yes) | wxtoimg

# setup predict
wget https://celestrak.org/NORAD/elements/gp.php?GROUP=weather&FORMAT=tle config/predict/predict.tle
cp config/predict/predict.tle ~/.predict/predict.tle
cp config/predict/predict.qth ~/.predict/predict.qth

