#!/bin/bash
flag=using_deb
lib_dir=/usr/local/lib
#flag=using_run
#1.1.kill x
echo "1.Kill .X"
ps ax | grep X
cd /tmp
sudo rm -rf .X0-lock
#1.2.kill Nouveau
sudo update-initramfs -u
#1.3.remove dpkg lock
sudo rm /var/lib/dpkg/lock
#1.4.remove /var/cache/apt/archives/lock
sudo rm /var/cache/apt/archives/lock
#2.1.using deb package
if [ $flag == "using_deb" ]
then
	sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64.deb
	sudo apt-get update
	sudo apt-get install cuda
fi
#2.2.using run file
if [ $flag == "using_run" ]
then
	echo "2.Run Installation File. Tips: Type :q to escape from seeing License. Then type accept/yes And/Or Enter."
	sudo sh cuda_8.0.44_linux.run
fi
#3.set link
sudo cp /usr/local/cuda-8.0/lib64/libcudart.so.8.0 $lib_dir/libcudart.so.8.0 && sudo ldconfig
sudo cp /usr/local/cuda-8.0/lib64/libcublas.so.8.0 $lib_dir/libcublas.so.8.0 && sudo ldconfig
sudo cp /usr/local/cuda-8.0/lib64/libcurand.so.8.0 $lib_dir/libcurand.so.8.0 && sudo ldconfig
#restart
sudo shutdown -r now

