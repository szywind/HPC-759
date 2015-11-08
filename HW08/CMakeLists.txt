# Set the required version of CMake
cmake_minimum_required(VERSION 2.8)

# Set your project title
project(ME759_Homework)

# Include macros from the SBEL utils library
Include(ParallelUtils.cmake)

# Example CUDA program
enable_cuda_support()

SET(CMAKE_BUILD_TYPE Release)

configure_file(scriptTiming.sh scriptTiming.sh)
cuda_add_executable(scan scan_gold.cpp scan_largearray.cu)



