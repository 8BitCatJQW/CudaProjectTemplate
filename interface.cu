#include <iostream>
#include <iomanip>
#include <string>

#include <cuda_runtime.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/version.hpp>

#include"interface.h"
#include"compute.h"




static U8 *cuda_l;


void interface(cv::Mat left, cv::Mat right)
{
  

   cv::Mat I1 = left(cv::Rect(0, 0, 320, 320));
   cv::Mat I2 = right(cv::Rect(0, 0, 320, 320));

	cv::imshow("left",I1);


   const int width = I1.cols;
   const int height = I1.rows;
   std::cout<<width<<" ,"<<height<<std::endl;
   
   const int size = width * height;

   std::cout<<"compute"<<std::endl;
	cudaMalloc((void **)&cuda_l, sizeof(U8)*size);


//	compute(left, count);

	cv::waitKey(0);

   

}

