#!/bin/bash

# instructions found here: https://qengineering.eu/install-ubuntu-20.04-on-raspberry-pi-4.html

### basis setup ### 

# to get your administation in order
sudo apt-get -y update
sudo apt-get -y upgrade
# now we can get the whole lot
sudo apt-get -y install build-essential cmake gcc g++ git unzip pkg-config
sudo apt-get -y install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get -y install libgtk2.0-dev libcanberra-gtk*
sudo apt-get -y install libxvidcore-dev libx264-dev
sudo apt-get -y install python3-dev python3-numpy python3-pip
sudo apt-get -y install libtbb2 libtbb-dev libdc1394-22-dev
sudo apt-get -y install libv4l-dev v4l-utils
sudo apt-get -y install libopenblas-dev libatlas-base-dev libblas-dev
sudo apt-get -y install liblapack-dev gfortran libhdf5-dev
sudo apt-get -y install libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo apt-get -y install protobuf-compiler
