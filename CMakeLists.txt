cmake_minimum_required(VERSION 3.5)

project(aruco-detection
         LANGUAGES CXX
         VERSION 0.0.0)

find_package(OpenCV REQUIRED)


set(EXE_TARGET_NAME aruco-tracker)

set(${EXE_TARGET_NAME}_HDR
    include/ArucoDetector.hpp
    )

set(${EXE_TARGET_NAME}_SRC
    src/main.cpp
    src/ArucoDetector.cpp
    )
    
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include/")

add_executable(${EXE_TARGET_NAME} ${${EXE_TARGET_NAME}_HDR} ${${EXE_TARGET_NAME}_SRC})

