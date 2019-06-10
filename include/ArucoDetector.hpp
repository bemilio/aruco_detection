#ifndef ARUCO_DETECTOR_H
#define ARUCO_DETECTOR_H

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/aruco.hpp>

namespace ArucoDetection {
        class ArucoDetector;
}

class ArucoDetection::ArucoDetector{
public:
    ArucoDetector();
    ~ArucoDetector();
    void detectMarkerPose(cv::Mat);
    void detectMarkerGridPose(cv::Mat);
    void setTrackedMarkerId(int id);
    int getTrackedMarkerId();
    
private:
    float marker_side_length_in_meters_;
    int marker_id_to_track_;
    cv::InputArray camera_matrix_;
    cv::InputArray distortion_coeffs_;
};

#endif ARUCO_DETECTOR_H

