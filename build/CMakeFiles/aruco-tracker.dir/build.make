# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/emilio/Repositories/aruco_detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/emilio/Repositories/aruco_detection/build

# Include any dependencies generated for this target.
include CMakeFiles/aruco-tracker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aruco-tracker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aruco-tracker.dir/flags.make

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o: CMakeFiles/aruco-tracker.dir/flags.make
CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o: ../src/ArucoDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emilio/Repositories/aruco_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o -c /home/emilio/Repositories/aruco_detection/src/ArucoDetector.cpp

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/emilio/Repositories/aruco_detection/src/ArucoDetector.cpp > CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.i

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/emilio/Repositories/aruco_detection/src/ArucoDetector.cpp -o CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.s

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.requires:

.PHONY : CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.requires

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.provides: CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/aruco-tracker.dir/build.make CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.provides.build
.PHONY : CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.provides

CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.provides.build: CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o


CMakeFiles/aruco-tracker.dir/src/main.cpp.o: CMakeFiles/aruco-tracker.dir/flags.make
CMakeFiles/aruco-tracker.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emilio/Repositories/aruco_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aruco-tracker.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aruco-tracker.dir/src/main.cpp.o -c /home/emilio/Repositories/aruco_detection/src/main.cpp

CMakeFiles/aruco-tracker.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco-tracker.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/emilio/Repositories/aruco_detection/src/main.cpp > CMakeFiles/aruco-tracker.dir/src/main.cpp.i

CMakeFiles/aruco-tracker.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco-tracker.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/emilio/Repositories/aruco_detection/src/main.cpp -o CMakeFiles/aruco-tracker.dir/src/main.cpp.s

CMakeFiles/aruco-tracker.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/aruco-tracker.dir/src/main.cpp.o.requires

CMakeFiles/aruco-tracker.dir/src/main.cpp.o.provides: CMakeFiles/aruco-tracker.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/aruco-tracker.dir/build.make CMakeFiles/aruco-tracker.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/aruco-tracker.dir/src/main.cpp.o.provides

CMakeFiles/aruco-tracker.dir/src/main.cpp.o.provides.build: CMakeFiles/aruco-tracker.dir/src/main.cpp.o


# Object files for target aruco-tracker
aruco__tracker_OBJECTS = \
"CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o" \
"CMakeFiles/aruco-tracker.dir/src/main.cpp.o"

# External object files for target aruco-tracker
aruco__tracker_EXTERNAL_OBJECTS =

aruco-tracker: CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o
aruco-tracker: CMakeFiles/aruco-tracker.dir/src/main.cpp.o
aruco-tracker: CMakeFiles/aruco-tracker.dir/build.make
aruco-tracker: /home/emilio/Repositories/robotology-superbuild/build/install/lib/libYARP_init.so.3.1.1
aruco-tracker: /home/emilio/Repositories/robotology-superbuild/build/install/lib/libYARP_sig.so.3.1.1
aruco-tracker: /usr/local/lib/libopencv_gapi.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_stitching.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_bgsegm.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_bioinspired.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_ccalib.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_dnn_objdetect.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_dpm.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_face.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_freetype.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_fuzzy.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_hdf.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_hfs.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_img_hash.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_line_descriptor.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_quality.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_reg.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_rgbd.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_saliency.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_stereo.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_structured_light.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_superres.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_surface_matching.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_tracking.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_videostab.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_xfeatures2d.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_xobjdetect.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_xphoto.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_aruco.so.4.1.0
aruco-tracker: /home/emilio/Repositories/robotology-superbuild/build/install/lib/libYARP_OS.so.3.1.1
aruco-tracker: /usr/local/lib/libopencv_shape.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_datasets.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_plot.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_text.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_dnn.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_ml.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_phase_unwrapping.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_optflow.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_ximgproc.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_video.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_objdetect.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_calib3d.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_features2d.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_flann.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_highgui.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_videoio.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_imgcodecs.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_photo.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_imgproc.so.4.1.0
aruco-tracker: /usr/local/lib/libopencv_core.so.4.1.0
aruco-tracker: CMakeFiles/aruco-tracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/emilio/Repositories/aruco_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable aruco-tracker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aruco-tracker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aruco-tracker.dir/build: aruco-tracker

.PHONY : CMakeFiles/aruco-tracker.dir/build

CMakeFiles/aruco-tracker.dir/requires: CMakeFiles/aruco-tracker.dir/src/ArucoDetector.cpp.o.requires
CMakeFiles/aruco-tracker.dir/requires: CMakeFiles/aruco-tracker.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/aruco-tracker.dir/requires

CMakeFiles/aruco-tracker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aruco-tracker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aruco-tracker.dir/clean

CMakeFiles/aruco-tracker.dir/depend:
	cd /home/emilio/Repositories/aruco_detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/emilio/Repositories/aruco_detection /home/emilio/Repositories/aruco_detection /home/emilio/Repositories/aruco_detection/build /home/emilio/Repositories/aruco_detection/build /home/emilio/Repositories/aruco_detection/build/CMakeFiles/aruco-tracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aruco-tracker.dir/depend

