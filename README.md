# deepdream
A fork of Google's published deepdream code

The jupyter notebook here was originally found at https://github.com/google/deepdream/blob/master/dream.ipynb (Apache 2 license included), but has not kept up with changing versions of python libraries. I've updated everything to work in Python3 out of the box as of August 2017, assuming all dependencies are installed. I've incorporated new images, just to differentiate it, and pulled in the caffe model they originally used from https://github.com/BVLC/caffe/tree/master/models/bvlc_googlenet (public domain). Importantly, all of the work was done by Alexander Mordvintsev, Michael Tyka, and Christopher Olah as described at http://googleresearch.blogspot.ch/2015/06/inceptionism-going-deeper-into-neural.html. All respect and credit should go in that direction.

## Getting it set up, only once

You must first install all of the dependencies, which could differ depending on your OS. I'm using Ubuntu 17.04 which makes things easier than doing this on Windows or a less-supported linux flavor.

1. From the shell, navigate to wherever you keep your projects.
```
    $ cd /home/mike/projects
```
2. Caffe (the machine learning framework) from http://caffe.berkeleyvision.org/installation.html. I've had trouble installing caffe for use within a virtualenv, so I just ran it on my global python installation rather than invest the time to make it work. If you require virtualenv, see https://github.com/BVLC/caffe/issues/2450 to get yourself started.
3. Google's protocol buffers software
```
    $ sudo apt install python3-protobuf
```
4. Jupyter notebook support
```
    $ sudo apt install jupyter-core
```
5. Python3 libraries, in Ubuntu (sudo for global installation, but not for virtualenvs) just
```
    $ sudo pip3 install numpy scipy Pillow ipython jupyter
```
6. Clone this repository
```
    $ git clone git@github.com:mfschmidt/deepdream.git
    $ cd deepdream
```
7. Download caffe models. They are too big to duplicate in github repositories so I put their urls in a script. You can download one or all of these by modifying the get_models.sh script, then modify the ipython code to use the one you like.
    ```
    $ get_models.sh
    ```
    a. Googlenet original from https://github.com/BVLC/caffe/tree/master/models/bvlc_googlenet and published as "Going deeper with Convolutions." Christian Szegedy, Wei Liu, Yangqing Jia, Pierre Sermanet, Scott Reed, Dragomir Anguelov, Dumitru Erhan, Vincent Vanhoucke, Andrew Rabinovich, arXiv:1409.4842
    
    b. Googlenet cars from https://gist.github.com/bogger/b90eb88e31cd745525ae and published as "A Large-Scale Car Dataset for Fine-Grained Categorization and Verification." L. Yang, P. Luo, C. C. Loy, X. Tang, arXiv:1506.08959, 2015
    
    c. Facial recognition from https://gist.github.com/ishay2b/58248e5f3c3bf575ac40 and published as "Facial Landmark Detection with Tweaked Convolutional Neural Networks." Yue Wu and Tal Hassner, arXiv:1511.04031, 2015
    
    d. MIT places from http://places.csail.mit.edu/model/googlenet_places205.tar.gz and published in “Learning Deep Features for Scene Recognition using Places Database.” B. Zhou, A. Lapedriza, J. Xiao, A. Torralba, and A. Oliva. Advances in Neural Information Processing Systems 27 (NIPS), 2014

## Running it, as often as you like

1. Run it
```
    $ jupyter notebook
```
2. From the browser, select your notebook and use the toolbar to run chunks of code.
