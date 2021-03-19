#!/bin/bash

# https://snapshots.linaro.org/ldcg/python/tensorflow/12/

wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/grpcio/grpcio-1.35.0-cp37-cp37m-linux_aarch64.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/h5py/h5py-3.1.0-cp37-cp37m-linux_aarch64.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/keras_applications/Keras_Applications-1.0.8-py3-none-any.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/keras_preprocessing/Keras_Preprocessing-1.1.2-py2.py3-none-any.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/numpy/numpy-1.18.5-cp37-cp37m-linux_aarch64.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/scipy/scipy-1.4.1-cp37-cp37m-linux_aarch64.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/six/six-1.15.0-py2.py3-none-any.whl
wget https://snapshots.linaro.org/ldcg/python/tensorflow/12/tensorflow_cpu/tensorflow_cpu-2.4.0-cp37-cp37m-linux_aarch64.whl

pip install -y grpcio-1.35.0-cp37-cp37m-linux_aarch64.whl
pip install -y h5py-3.1.0-cp37-cp37m-linux_aarch64.whl
pip install -y Keras_Applications-1.0.8-py3-none-any.whl
pip install -y Keras_Preprocessing-1.1.2-py2.py3-none-any.whl
pip install -y numpy-1.18.5-cp37-cp37m-linux_aarch64.whl
pip install -y scipy-1.4.1-cp37-cp37m-linux_aarch64.whl
pip install -y six-1.15.0-py2.py3-none-any.whl
pip install -y tensorflow_cpu-2.4.0-cp37-cp37m-linux_aarch64.whl
