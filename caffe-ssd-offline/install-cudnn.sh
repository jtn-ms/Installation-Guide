#!/bin/bash
lib_dir=/usr/local/lib
include_dir=/usr/local/include

#cudnn_file_name=cudnn-7.0-linux-x64-v4.0-prod.tgz
#cudnn_lib_file_name=libcudnn.so.4.0.7
#cuddn_ln_file_name=libcudnn.so.4

#cudnn_file_name=cudnn-8.0-linux-x64-v5.1.tgz
#cudnn_lib_file_name=libcudnn.so.5.1.5
#cuddn_ln_file_name=libcudnn.so.5

cudnn_file_name=cudnn-8.0-linux-x64-v6.0.tgz
cudnn_lib_file_name=libcudnn.so.6.0.21
cuddn_ln_file_name=libcudnn.so.6

tar xvf $cudnn_file_name
cd cuda/include
sudo cp *.h $include_dir/
cd ../lib64
sudo cp lib* $lib_dir/
cd $lib_dir
sudo chmod +r $cudnn_lib_file_name
sudo ln -sf $cudnn_lib_file_name $cuddn_ln_file_name
sudo ln -sf $cudnn_ln_file_name libcudnn.so
sudo ldconfig	
