#ifndef ARUCO_DETECTOR_H
#define ARUCO_DETECTOR_H

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/aruco.hpp>

namespace ArucoDetection {
    

#define BOARD 0
#define MARKER 1
    
typedef struct{
    int detection_type;
    std::vector<int> marker_ids_in_board;
    int marker_id_to_track; 
    float marker_size_meters;
    cv::Mat camMatrix;
    cv::Mat distCoeffs;
    cv::aruco::Dictionary aruco_dictionary;
}ArucoDetectorParameters;
    
    
    
class ArucoDetector{

public:
    ArucoDetector(ArucoDetectorParameters);
    ~ArucoDetector();
    bool detectMarkerPose(cv::Mat);
    bool detectMarkerGridPose(cv::Mat);
    void setTrackedMarkerId(int id);
    int getTrackedMarkerId();
    bool acquireTrackerMarkerId(int attempts);
    int getDetectionType();
    
private:
//     float marker_side_length_in_meters_;
//     int marker_id_to_track_;
//     cv::InputArray camera_matrix_;
//     cv::InputArray distortion_coeffs_;
    cv::Mat  last_known_position_;
    cv::Mat last_known_orientation_;
    
    
    ArucoDetectorParameters parameters_;
};


}

#endif ARUCO_DETECTOR_H

