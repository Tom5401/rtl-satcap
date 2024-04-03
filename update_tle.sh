#!/bin/bash

HOME_DIR=/home/satdev

wget "https://celestrak.org/NORAD/elements/gp.php?GROUP=weather&FORMAT=tle" -qO - | grep --no-group-separator -A 2 -f config/satellite_list.txt > config/predict/predict.tle
cp config/predict/predict.tle $HOME_DIR/.predict/predict.tle
cp config/predict/predict.qth $HOME_DIR/.predict/predict.qth

