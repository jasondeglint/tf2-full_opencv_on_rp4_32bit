#!/bin/bash

# instructions found here: https://qengineering.eu/install-ubuntu-20.04-on-raspberry-pi-4.html

### install tensorflow 2.4.1 lite ### 

cd ~
# the dependencies
sudo apt-get -y install wget curl
# download TensorFlow 2.4.1
wget -O tensorflow.zip https://github.com/tensorflow/tensorflow/archive/v2.4.1.zip
# unpack and give the folder a convenient name
unzip tensorflow.zip
mv tensorflow-2.4.1 tensorflow
cd tensorflow
# get the dependencies
./tensorflow/lite/tools/make/download_dependencies.sh
# build TensorFlow Lite
./tensorflow/lite/tools/make/build_aarch64_lib.sh

cd ~/tensorflow/tensorflow/lite/tools/make/downloads/flatbuffers
mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig
