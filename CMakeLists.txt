cmake_minimum_required(VERSION 3.5)

project(aruco-detection
         LANGUAGES CXX
         VERSION 0.0.0)

find_package(OpenCV REQUIRED)
find_package(YARP  REQUIRED)


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

target_link_libraries(${EXE_TARGET_NAME} PRIVATE
                                         ${VTK_LIBRARIES}
                                         YARP::YARP_init
                                         YARP::YARP_OS
                                         YARP::YARP_sig
#                                          YARP::YARP_eigen
#                                          YARP::YARP_cv
#                                          iCubGazeCtrlLibrary
#                                          BayesFilters::BayesFilters
                                         ${OpenCV_LIBS}
                                         )
