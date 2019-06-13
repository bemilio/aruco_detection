
#include <ArucoDetector.hpp>
#include <yarp/os/ResourceFinder.h>



static bool readCameraParameters(std::string filename, cv::Mat &camMatrix, cv::Mat &distCoeffs) {
    cv::FileStorage fs(filename, cv::FileStorage::READ);
    if(!fs.isOpened())
        return false;
    fs["camera_matrix"] >> camMatrix;
    fs["distortion_coefficients"] >> distCoeffs;
    return true;
}  
    
    
    
int main(int argc, char **argv) {
    
//     yarp::os::ResourceFinder rf;
//     rf.setVerbose();
//     rf.setDefaultContext("aruco-detector");
//     rf.setDefaultConfigFile("config.ini");
//     rf.configure(argc, argv);
    //...?
    
    cv::aruco::Dictionary aruco_dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_4X4_50);
    cv::Mat camMatrix, distCoeffs;
    bool ok = readCameraParameters("/home/emilio/Documents/calib_parameters_wiko_fever", camMatrix, distCoeffs);
    if (!ok)
        printf("Camera parameters not found");
    float marker_size_meters=0.083;
    int marker_id_to_track =1;
    std::vector<int> marker_ids_in_board = {0, 1, 2, 3};
    
    ArucoDetection::ArucoDetectorParameters aruco_detector_parameters;
    aruco_detector_parameters.detection_type = BOARD;    
    if(aruco_detector_parameters.detection_type == BOARD){
        aruco_detector_parameters.marker_ids_in_board = marker_ids_in_board;
        marker_id_to_track = -1;
    }else{
        aruco_detector_parameters.marker_ids_in_board = {-1};
        aruco_detector_parameters.marker_id_to_track = marker_id_to_track;
    }
    
    aruco_detector_parameters.camMatrix = camMatrix;
    aruco_detector_parameters.distCoeffs = distCoeffs;
    aruco_detector_parameters.marker_size_meters = marker_size_meters;
    aruco_detector_parameters.aruco_dictionary = aruco_dictionary;
    aruco_detector_parameters.markers_in_board_x = 2;
    aruco_detector_parameters.markers_in_board_y = 2;
    aruco_detector_parameters.marker_separation_meters = 0.012;
    
    ArucoDetection::ArucoDetector aruco_detector(aruco_detector_parameters);
    cv::VideoCapture input_video;
    //opens standard camera. Modify to make it more general
    input_video.open(0);
    while(input_video.grab()){
        cv::Mat current_frame;
        input_video.retrieve(current_frame);
        if(aruco_detector.getDetectionType() == BOARD)
            aruco_detector.detectMarkerGridPose(current_frame);
        else
            aruco_detector.detectMarkerPose(current_frame);
    }
    
//     cv::VideoCapture video_grabber( ...);
//     
//     for(;;){
//         cv::Mat current_image;
//         
//         
//         aruco_detector.detectMarkerPose(current_image);
//     }
//     
}

