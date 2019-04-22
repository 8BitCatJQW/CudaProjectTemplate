 
#include <iostream>
#include <iomanip>
#include <string>

#include <cuda_runtime.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include"interface.h"

int main()
{

	cv::Mat imgLeft = cv::imread("left.png", CV_8U);
   cv::Mat imgRight = cv::imread("right.png", CV_8U);

	interface(imgLeft, imgRight);

	return 0;

}

