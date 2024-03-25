#!/bin/bash

## Install rtl sdr v4 drivers
# Remove old drivers
sudo apt purge ^librtlsdr
sudo rm -rvf /usr/lib/librtlsdr* /usr/include/rtl-sdr* /usr/local/lib/librtlsdr* /usr/local/include/rtl-sdr* /usr/local/include/rtl_* /usr/local/bin/rtl_* 
# Install drivers
sudo apt install libusb-1.0-0-dev git cmake pkg-config
git clone https://github.com/rtlsdrblog/rtl-sdr-blog
cd rtl-sdr-blog
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
sudo ldconfig
echo 'blacklist dvb_usb_rtl28xxu' | sudo tee --append /etc/modprobe.d/blacklist-dvb_usb_rtl28xxu.conf
cd ..

# Install packages
cd packages
sudo dpkg -i packages/noaa-apt_1.4.1-1_amd64.deb
sudo dpkg -i ./wxtoimg-amd64-2.11.2-beta.deb

sudo dpkg -i ./satdump_1.1.4_amd64.deb
sudo apt -y -f install
sudo dpkg -i ./satdump_1.1.4_amd64.deb

sudo dpkg -i ./predict_2.2.3-4-b2_amd64.deb
sudo apt -y -f install
sudo dpkg -i ./predict_2.2.3-4-b2_amd64.deb


