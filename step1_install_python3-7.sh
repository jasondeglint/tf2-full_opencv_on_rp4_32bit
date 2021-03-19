#!/bin/bash

# partial instructions from here: https://vielmetti.typepad.com/logbook/2021/02/getting-tensorflow-running-on-arm64.html
sudo apt-add-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get -y install python3.7 python3.7-dev
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2
sudo apt-get install python3-pip -y
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
sudo apt-get install -y libhdf5-dev
#pip install --upgrade pip

# to see a list of all stable go to https://github.com/tensorflow/tensorflow and search for "Community Supported Builds"
# we need a "Linux aarch64 CPU" build
# download TensorFlow 2.4.0 CPU wheel from linaro. This wheel will only work with Python 3.7
#wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/tensorflow_cpu/tensorflow_cpu-2.4.0-cp37-cp37m-linux_aarch64.whl
#pip install tensorflow_cpu-2.4.0-cp37-cp37m-linux_aarch64.whl
