#!/bin/bash
export CUDA_HOME=/usr/local/cuda-8.0
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
export CAFFE_SSD_ROOT=/home/frank/caffe-ssd
export CAFFE_ROOT=/home/frank/caffe-master
export CAFFE_SEGNET_ROOT=/home/frank/caffe-segnet
export PYTHONPATH=$CAFFE_SEGNET_ROOT/python:$PYTHONPATH	
