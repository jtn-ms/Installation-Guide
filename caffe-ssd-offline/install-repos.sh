#!/bin/bash
home_dir=/home/frank
deb_dir=$(pwd)/debs
lib_dir=/usr/local/lib
libprotobuf_dev=libprotobuf-dev-all
libleveldb_dev=libleveldb-dev-all
libsnappy_dev=libsnappy-dev-all
libopencv_dev=libopencv-dev-list
libhdf5_serial_dev=libhdf5-serial-dev
protobuf_compiler=protobuf-compiler
libboost_all_dev=libboost-all-dev
libgflags_dev=libgflags-dev
libgoogle_glog_dev=libgoogle-glog-dev
liblmdb_dev=liblmdb-dev
libopenblas_dev=libopenblas-dev
liblapack_dev=liblapack-dev
libatlas_base_dev=libatlas-base-dev
python_additional=python-additional
IFS=$'\n'
cd $deb_dir/
echo $(pwd)
#for list_file in $libprotobuf_dev $libleveldb_dev $libsnappy_dev $libopencv_dev $libhdf5_serial_dev $protobuf_compiler
#for list_file in $libboost_all_dev
#for list_file in $libgflags_dev $libgoogle_glog_dev $liblmdb_dev
#for list_file in $libopenblas_dev $liblapack_dev $libatlas_base_dev
#for list_file in $python_additional
for list_file in $libprotobuf_dev $libleveldb_dev $libsnappy_dev $libopencv_dev $libhdf5_serial_dev $protobuf_compiler\
		 $libboost_all_dev\
		 $libgflags_dev $libgoogle_glog_dev $liblmdb_dev\
		 $libopenblas_dev $liblapack_dev $libatlas_base_dev\
		 $python_additional
do
    if [ -f $list_file ]
    then
	echo "##################################################################################"
	echo "Now start installing "$list_file"!"
	echo "##################################################################################"
        for filename in $(cat $list_file)
        do
	     if [ -f $filename ]
	     then
    	     	sudo dpkg -i $filename
	     fi
        done
    fi
done
#sudo chmode 777 *.*
#sudo dpkg --configure gir1.2-gdkpixbuf-2.0
#

