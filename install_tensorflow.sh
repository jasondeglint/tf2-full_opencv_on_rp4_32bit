#!/bin/bash

#mkdir tensorflowRasp
#cd tensorflowRasp/
#python3 -m pip install virtualenv

#virtualenv env
#source env/bin/activate

sudo apt-get install -y libhdf5-dev libc-ares-dev libeigen3-dev gcc gfortran python-dev libgfortran5 libatlas3-base libatlas-base-dev libopenblas-dev libopenblas-base libblas-dev liblapack-dev cython openmpi-bin libopenmpi-dev python3-dev
sudo pip3 install keras_applications==1.0.8 --no-deps
sudo pip3 install keras_preprocessing==1.1.0 --no-deps
sudo pip3 install pybind11
sudo pip3 install h5py==2.9.0
sudo pip3 install -U six wheel mock
#wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.1.0/tensorflow-2.1.0-cp37-none-linux_armv7l.whl
# wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.1.0/tensorflow-2.1.0-cp37-none-linux_aarch64.whl 
wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_aarch64.whl 

sudo pip3 uninstall tensorflow
python3 -m pip install tensorflow-2.1.0-cp37-none-linux_aarch64.whl
