#include "ArucoDetector.hpp"


namespace ArucoDetection{

void ArucoDetector::setTrackedMarkerId(int id){
    marker_id_to_track_ = id;
};
int ArucoDetector::getTrackedMarkerId(){
    return marker_id_to_track_;
};

bool acquireTrackerMarkerId(int attempts){
    
}

void ArucoDetector::ArucoDetector( ArucoDetector::CameraManager cameraManager, float marker_side_length_in_meters){
    camera_matrix_ = cameraManager.getCameraMatrix();
    distortion_coeffs_ = cameraManager.getDistortionCoeffs();
    marker_side_length_in_meters_ = marker_side_length_in_meters;
}


bool ArucoDetector::detectMarkerPose(cv::Mat input_image){
    cv::Mat input_image_copy;
    input_image.copyTo(input_image_copy);
    std::vector<int> ids;
    std::vector<std::vector<cv::Point2f>> corners;
    cv::aruco::detectMarkers(input_image_copy, dictionary_, corners, ids);
    std::vector<cv::Mat> rvecs, tvecs;
    if(ids.size()>0){
        cv::aruco::estimatePoseSingleMarkers(corners, marker_side_length_in_meters_, camera_matrix_, distortion_coeffs_, rvecs, tvecs);
        last_known_rvec_=rvecs;
        last_known_tvec_=tvecs;
        return 1;
    }
    else
        return 0;
}

void ArucoDetector::detectMarkerGridPose(cv::Mat input_image){
    
};

}
