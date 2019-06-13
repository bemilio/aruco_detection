#include "ArucoDetector.hpp"


namespace ArucoDetection{

// void ArucoDetector::setTrackedMarkerId(int id){
//     marker_id_to_track_ = id;
// };
// int ArucoDetector::getTrackedMarkerId(){
//     return marker_id_to_track_;
// };

bool acquireTrackerMarkerId(int attempts){
    
};

ArucoDetector::ArucoDetector(ArucoDetectorParameters parameters):
    parameters_(parameters){
    
    if(parameters_.detection_type==BOARD){
        board_ = cv::aruco::GridBoard::create(parameters.markers_in_board_x, parameters.markers_in_board_y, parameters.marker_size_meters, parameters.marker_separation_meters, &parameters.aruco_dictionary, parameters.marker_ids_in_board[0]);
    }
}

int ArucoDetector::getDetectionType()
{
    return parameters_.detection_type;
}



bool ArucoDetector::detectMarkerPose(cv::Mat input_image){
    cv::Mat input_image_copy;
    input_image.copyTo(input_image_copy);
    std::vector<int> ids;
    std::vector<std::vector<cv::Point2f>> corners;
    cv::aruco::detectMarkers(input_image_copy, &parameters_.aruco_dictionary, corners, ids);
    if(ids.size()==0){
        // No marker found
        return 0;
    }
    std::vector<int>::iterator iterator_tracked_id = std::find( ids.begin(), ids.end(), parameters_.marker_id_to_track);
    
    if(iterator_tracked_id!= ids.end()){
        int index_tracked_id = distance(ids.begin(), iterator_tracked_id);
        std::vector<cv::Mat> rvecs, tvecs;
        cv::aruco::estimatePoseSingleMarkers(corners, parameters_.marker_size_meters, parameters_.camMatrix, parameters_.distCoeffs, rvecs, tvecs);
        last_known_position_=rvecs[index_tracked_id];
        last_known_orientation_=tvecs[index_tracked_id];
        return 1;
        
    }
    else{
        //Marker not found
        return 0;
    }
    
}

bool ArucoDetector::detectMarkerGridPose(cv::Mat input_image){
    cv::Mat input_image_copy;
    input_image.copyTo(input_image_copy);
    std::vector<int> ids;
    std::vector<std::vector<cv::Point2f>> corners;
    cv::aruco::detectMarkers(input_image_copy, &parameters_.aruco_dictionary, corners, ids);
    if(ids.size()==0){
        // No marker found
        return 0;
    }
    bool board_found = 0;
    for(int i=0; i<parameters_.marker_ids_in_board.size(); i++){
        std::vector<int>::iterator iterator_tracked_id = std::find( ids.begin(), ids.end(), parameters_.marker_ids_in_board[i]);
        if(iterator_tracked_id!= ids.end()){
        
            board_found = 1;
            break;
        }
    }
    
    
    if(board_found){
        std::vector<cv::Mat> rvecs, tvecs;
        cv::aruco::estimatePoseBoard(corners, ids, board_, parameters_.camMatrix, parameters_.distCoeffs, rvecs, tvecs);
        last_known_position_= rvecs[0];
        last_known_orientation_= tvecs[0];
        return 1;
        
    }
    else{
        //Marker not found
        return 0;
    }
    
}

}
