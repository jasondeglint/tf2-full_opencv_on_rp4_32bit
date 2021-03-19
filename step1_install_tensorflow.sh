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


### Install TensorFlow or 2.4.1
# get a fresh start (remember, the 64-bit OS is still under development)
sudo apt-get -y update
sudo apt-get -y upgrade
# install pip and pip3
sudo apt-get -y install python-pip python3-pip
# remove old versions, if not placed in a virtual environment (let pip search for them)
sudo pip uninstall tensorflow
sudo pip3 uninstall tensorflow
# install the dependencies (if not already onboard)
sudo apt-get -y install gfortran
sudo apt-get -y install libhdf5-dev libc-ares-dev libeigen3-dev
sudo apt-get -y install libatlas-base-dev libopenblas-dev libblas-dev
sudo apt-get -y install liblapack-dev
# upgrade setuptools 47.1.1 -> 53.0.0
sudo -H pip3 install --upgrade setuptools
sudo -H pip3 install pybind11
sudo -H pip3 install Cython==0.29.21
# install h5py with Cython version 0.29.21 (± 6 min @1950 MHz)
sudo -H pip3 install h5py==2.10.0
# install gdown to download from Google drive
pip3 install gdown
# copy binairy
sudo cp /home/ubuntu/.local/bin/gdown /usr/local/bin/gdown
# download the wheel
gdown https://drive.google.com/uc?id=1rfgF2U2oZJvQSMbGNZl8f5jbWP4fY6UW
# install TensorFlow 2.4.1 (± 68 min @1950 MHz)
sudo -H pip3 install tensorflow-2.4.1-cp38-cp38-linux_aarch64.whl
