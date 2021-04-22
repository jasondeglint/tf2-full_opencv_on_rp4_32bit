# Tensorflow & OpenCV on Raspberry Pi 32 bit

Setting up tensorflow 2.4.0, Tensorflow-lite and OpenCV 4.5.1 on 32 bit Raspberry Pi 4 (arm64).

## Step 1: Download RP4 32 bit and install on SD card

Use the Raspberry Pi Imager to install Raspberry Pi OS 32 bit.

https://www.raspberrypi.org/software/

In bash run:

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

## Step 2: Install Python 3.7

The bash script takes care of all this. We are using Python 3.7 because that wheel is provided for ARM64 hardware with Tensorflow 2.

Run the following command in terminal:

`$ source install_python3-7.sh`

## Step 3: Install OpenCV

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


## Step 4: Install TensorFlow 2

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



## Step 5: Install other necesssary packages

```
$ pip install repackage imutils
```


## Other helpful bash calls

```
$ uname -a
$ sudo apt install python3-pip
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


