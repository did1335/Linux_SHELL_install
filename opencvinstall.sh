echo “Please download opencv-3.3.0 first.”

cd ~
sudo apt-get install --assume-yes build-essential cmake git

sudo -v
sudo apt-get install --assume-yes pkg-config unzip ffmpeg qtbase5-dev python-dev python3-dev python-numpy python3-numpy

sudo -v
sudo apt-get install --assume-yes libopencv-dev libgtk-3-dev libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev

 sudo -v
sudo apt-get install --assume-yes libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev

sudo -v
sudo apt-get install --assume-yes libv4l-dev libtbb-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev

sudo -v
sudo apt-get install --assume-yes libvorbis-dev libxvidcore-dev v4l-utils vtk6

sudo -v
sudo apt-get install --assume-yes liblapacke-dev libopenblas-dev libgdal-dev checkinstall

sudo -v
sudo mkdir build
cd build/

sudo -v
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D FORCE_VTK=ON -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_CUBLAS=ON -D CUDA_NVCC_FLAGS="-D_FORCE_INLINES" -D WITH_GDAL=ON -D WITH_XINE=ON -D BUILD_EXAMPLES=ON ..

sudo -v
sudo make -j $(($(nproc) + 1))

sudo -v
sudo make install

sudo -v
sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo -v
sudo ldconfig

sudo -v
sudo apt-get update

cd ~

echo “”
echo “Done.”


