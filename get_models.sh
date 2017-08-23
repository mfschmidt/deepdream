#!/usr/bin/env bash

# Make a directory for the models
mkdir models
cd models

# Make a directory for the BLVC Googlenet model and download it.
if [ -d deeper ]; then
    echo "The deeper model exists and I'd rather not waste bandwidth to re-get it."
    echo "If you'd like to get it anyway, just delete or rename the deeper subdirectory and run get_models.sh again."
else
    mkdir deeper
    cd deeper
    wget http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
    wget https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/deploy.prototxt
    wget https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/quick_solver.prototxt
    wget https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/solver.prototxt
    wget https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/train_val.prototxt
    cd ..
fi

# Make a directory for the cars model and download it.
if [ -d cars ]; then
    echo "The cars model exists and I'd rather not waste bandwidth to re-get it."
    echo "If you'd like to get it anyway, just delete or rename the cars subdirectory and run get_models.sh again."
else
    mkdir cars
    cd cars
    wget http://mmlab.ie.cuhk.edu.hk/datasets/comp_cars/googlenet_finetune_web_car_iter_10000.caffemodel
    wget https://gist.github.com/bogger/b90eb88e31cd745525ae/raw/b5dd8c1a58318fdceeeac00322c90e4a865c3229/deploy.prototxt
    wget https://gist.github.com/bogger/b90eb88e31cd745525ae/raw/b5dd8c1a58318fdceeeac00322c90e4a865c3229/solver_googlenet.prototxt
    wget https://gist.github.com/bogger/b90eb88e31cd745525ae/raw/b5dd8c1a58318fdceeeac00322c90e4a865c3229/train_val_googlenet.prototxt
    cd ..
fi

# Make a directory for the places model and download it.
if [ -d places ]; then
    echo "The places model exists and I'd rather not waste bandwidth to re-get it."
    echo "If you'd like to get it anyway, just delete or rename the places subdirectory and run get_models.sh again."
else
    wget http://places.csail.mit.edu/model/googlenet_places205.tar.gz
    tar -xzf googlenet_places205.tar.gz
    rm googlenet_places205.tar.gz
    mv googlenet_places205 places
    cd places
    mv deploy_places205.protxt deploy.prototxt
    mv googlelet_places205_train_iter_2400000.caffemodel googlenet_places.caffemodel    
    cd ..
fi

# Make a directory for the faces model and download it.
if [ -d faces ]; then
    echo "The faces model exists and I'd rather not waste bandwidth to re-get it."
    echo "If you'd like to get it anyway, just delete or rename the faces subdirectory and run get_models.sh again."
else
    mkdir faces
    cd faces
    wget https://github.com/ishay2b/VanillaCNN/blob/master/ZOO/vanillaCNN.caffemodel?raw=true
    mv vanillaCNN.caffemodel\?raw\=true vanillaCNN.caffemodel
    wget https://gist.github.com/ishay2b/58248e5f3c3bf575ac40/raw/5642a211c22d699f82a93cb77d090f2ed33c034c/vanilla_deploy.prototxt
    wget https://gist.github.com/ishay2b/58248e5f3c3bf575ac40/raw/5642a211c22d699f82a93cb77d090f2ed33c034c/vanilla_adam_solver.prototxt
    wget https://gist.github.com/ishay2b/58248e5f3c3bf575ac40/raw/5642a211c22d699f82a93cb77d090f2ed33c034c/vanilla_train.prototxt
    cd ..
fi

# Jump back out of the models subdirectory
cd ..
