Detect face sử dụng model retinaface (best performent for edge device as pi, tablet)


cd <path/to/project>
mkdir build && cd build

cmake ..
make -j4

Run:
./retinaface/retinaface <path/to/image>
