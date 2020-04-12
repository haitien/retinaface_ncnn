Detect face sử dụng model retinaface (best performent for edge device as pi, tablet)
<Chỉnh lại dòng 23, 24 trong retina_face.h cho đúng abs path của 2 file trong model/>

==> "Cần fix lại lỗi này"

cd <path/to/project>
mkdir build && cd build

cmake ..
make -j4

Run:
./retinaface/retinaface <path/to/image>
