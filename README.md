# deepdream
A fork of Google's published deepdream code

The jupyter notebook here was originally found at https://github.com/google/deepdream/blob/master/dream.ipynb (Apache 2 license included), but has not kept up with changing versions of python libraries. I've updated everything to work in Python3 out of the box as of August 2017, assuming all dependencies are installed. I've incorporated new images, just to differentiate it, and pulled in the caffe model they originally used from https://github.com/BVLC/caffe/tree/master/models/bvlc_googlenet (public domain). Importantly, all of the work was done by Alexander Mordvintsev, Michael Tyka, and Christopher Olah as described at http://googleresearch.blogspot.ch/2015/06/inceptionism-going-deeper-into-neural.html. All respect and credit should go in that direction.

## Getting it set up

You must first install all of the dependencies, which could differ depending on your OS. I'm using Ubuntu 17.04 which makes things easier than doing this on Windows or a less-supported linux flavor.

1. Caffe (the machine learning framework) from http://caffe.berkeleyvision.org/installation.html. I've had trouble installing caffe for use within a virtualenv, so I just ran it on my global python installation rather than invest the time to make it work. If you require virtualenv, see https://github.com/BVLC/caffe/issues/2450 to get yourself started.
2. Python3 libraries, in Ubuntu (sudo for global installation, but not for virtualenvs) just
```
    $ sudo pip3 install numpy scipy Pillow
```
3. Google's protocol buffers software
```
    $ sudo apt install python3-protobuf
```
4. Jupyter notebook support
```
    $ sudo apt install jupyter-core
    $ sudo pip3 install jupyter
```
## Running it

1. From the shell, navigate to wherever you keep your projects.
```
    $ cd /home/mike/projects
```
2. Clone this repository
```
    $ git clone git@github.com:mfschmidt/deepdream.git
    $ cd deepdream
```
3. Run it
```
    $ jupyter notebook
```
4. From the browser, select your notebook and use the toolbar to run chunks of code.
