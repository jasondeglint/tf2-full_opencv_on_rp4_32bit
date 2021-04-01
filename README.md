# tf2.0-cv2-kivy-on-ubuntu20.04-arm64-RP4
Setting up tensorflow 2.0, Kivy and OpenCV on Ubuntu 20.04 server and Raspberry Pi 4 (arm64)


## Step: Download Ubuntu Server 20.04.2 LTS
link: https://ubuntu.com/download/raspberry-pi

Note: Do not download the Ubuntu 20.10 desktop or server version as it does not suppport tensorflow at the moment. You must download and use Ubuntu 20.04 for the Raspberry Pi.

In bash run:

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

We now need to to setup a Desktop / windows manager. To do so, run the following commands:

```
$ sudo apt install xubuntu-desktop
$ sudo reboot
```

Detailed instructions can be found here: 

https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#5-install-a-desktop


## Step: Install Python 3.7

Given that Ubuntu 20.04 comes with Python 3.8, we need to install Python 3.7 and also make Python 3.7 the default python version. The bash script takes care of all this. We are using Python 3.7 because that wheel is provided for ARM64 hardware with Tensorflow 2.

Run the following command in terminal:

`$ source install_python3-7.sh`

## Step: Install Kivy

First this:
```
$ python -m pip install --upgrade pip setuptools virtualenv
$ python -m virtualenv wb
$ source wb/bin/activate

```

You are now in your virtual environment. Now you can install Kivy 2.0.0:
```
$ sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev
$ python -m pip install kivy[base] kivy_examples
$ python /wb/share/kivy-examples/3Drendering/main.py 
```

You should see a monkey. :)

You can also check in python:
```
$ python
>>> import kivy
>>> kivy.__version__
```
You should see `'xxx'`.


References:

https://kivy.org/doc/stable/installation/installation-linux.html#linux-ppa

https://kivy.org/doc/stable/gettingstarted/installation.html#install-pip


## Step: Install TensorFlow 2

We need to download a wheel file that has pre-compiled tensorflow for the Raspberry Pi 4. A list wheel files for this can be found here:
https://github.com/lhelontra/tensorflow-on-arm/releases

As you can see most of these pre-compiled files only work with Python 3.7, which we just installed in Step 2.

We need a "Linux aarch64 CPU" build since we are running Ubuntu on a Raspberry Pi 4. To verify this on your RP4 type `uname -a` into the terminal. You should see `aarch64` as part of the output text. 

Downloading the wheel file and installing all the dependecnies is taken care of in the bash script. So in the terminal type:

```
$ wget https://raw.githubusercontent.com/jasondeglint/tf/main/install_tensorflow.sh
$ source install_tensorflow.sh
```

Then to check if it has installed:
```
$ python
>>> import tensorflow at tf
>>> tf.__version__
```
You should see `'xxx'`.

## Step: Install OpenCV

Simply, type the following int the terminal:

```
$ sudo apt-get install libhdf5-dev libatlas-base-dev libjasper-dev libqtgui4 libqt4-test
$ pip3 install opencv-python
```

Then check if it worked:

```
$ python3
>>> import cv2
>>> cv2.__version__
```
You should see `'4.5.1'`.

https://www.youtube.com/watch?v=cGmGOi2kkJ4&ab_channel=ProgrammingKnowledge&loop=0




## Other helpful bash calls

```
$ dpkg -L kivy-examples
$ sudo update-alternatives --config python3
```


## Other Notes


Raspberry Pi OS (64 bit) beta test version
https://www.raspberrypi.org/forums/viewtopic.php?t=275370

To see a list of all stable version of TensorFlow 2.0 go to https://github.com/tensorflow/tensorflow and search for "Community Supported Builds".

Some other great resources:

https://vielmetti.typepad.com/logbook/2021/02/getting-tensorflow-running-on-arm64.html

https://qengineering.eu/install-tensorflow-2.2.0-on-raspberry-64-os.html


