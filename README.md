Build opencv (neu chua cai lib):
(https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html)

sudo apt-get install build-essential

sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

cd ~
git clone https://github.com/opencv/opencv.git
cd ~/opencv
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j7
sudo make install




Detect face sử dụng model retinaface (best performent for edge device as pi, tablet)


cd <path/to/project>
mkdir build && cd build

cmake ..
make -j4

Run:
./retinaface/retinaface <path/to/image>
