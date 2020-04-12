#include <stdio.h>
#include <time.h>

#include <vector>

#include "retina_face.h"

int main(int argc, char **argv)
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s [imagepath]\n", argv[0]);
        return -1;
    }

    const char *imagepath = argv[1];

    cv::Mat m = cv::imread(imagepath, 1);

    if (m.empty())
    {
        fprintf(stderr, "cv::imread %s failed\n", imagepath);
        return -1;
    }
    printf("Read image from %s\n", imagepath);
    cv::Size s = m.size();
    auto h = s.height;
    auto w = s.width;
    printf("Size of image (h, w) = (%d, %d)\n", h, w);

    cv::Mat resized_img;
    if (h > 640 && w > 600){
        auto new_size = cv::Size(640, 480);
        cv::resize(m, resized_img, new_size);
    }else{
        resized_img = m;
    }
    
#if NCNN_VULKAN
    ncnn::create_gpu_instance();
#endif // NCNN_VULKAN
    std::vector<rf::FaceObject> faceobjects;
    const clock_t begin_time = clock();

    rf::detect_retinaface(resized_img, faceobjects);
    printf("Time for detected: %0.2f s.\n.", float(clock() - begin_time) / CLOCKS_PER_SEC);
    // std::cout << "Time for detected: " << float(clock() - begin_time) / CLOCKS_PER_SEC << "s." << std::endl;

#if NCNN_VULKAN
    ncnn::destroy_gpu_instance();
#endif // NCNN_VULKAN


    rf::draw_faceobjects(resized_img, faceobjects);


    return 0;
}
