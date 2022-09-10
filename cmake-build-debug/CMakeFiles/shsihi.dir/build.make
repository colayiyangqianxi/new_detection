# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/clion-2022.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/clion-2022.1.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lmx/CLionProjects/new_detection-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lmx/CLionProjects/new_detection-main/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/shsihi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/shsihi.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/shsihi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shsihi.dir/flags.make

CMakeFiles/shsihi.dir/main.cpp.o: CMakeFiles/shsihi.dir/flags.make
CMakeFiles/shsihi.dir/main.cpp.o: ../main.cpp
CMakeFiles/shsihi.dir/main.cpp.o: CMakeFiles/shsihi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lmx/CLionProjects/new_detection-main/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shsihi.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shsihi.dir/main.cpp.o -MF CMakeFiles/shsihi.dir/main.cpp.o.d -o CMakeFiles/shsihi.dir/main.cpp.o -c /home/lmx/CLionProjects/new_detection-main/main.cpp

CMakeFiles/shsihi.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shsihi.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lmx/CLionProjects/new_detection-main/main.cpp > CMakeFiles/shsihi.dir/main.cpp.i

CMakeFiles/shsihi.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shsihi.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lmx/CLionProjects/new_detection-main/main.cpp -o CMakeFiles/shsihi.dir/main.cpp.s

# Object files for target shsihi
shsihi_OBJECTS = \
"CMakeFiles/shsihi.dir/main.cpp.o"

# External object files for target shsihi
shsihi_EXTERNAL_OBJECTS =

shsihi: CMakeFiles/shsihi.dir/main.cpp.o
shsihi: CMakeFiles/shsihi.dir/build.make
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
shsihi: libSRCSO.a
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
shsihi: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
shsihi: CMakeFiles/shsihi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lmx/CLionProjects/new_detection-main/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shsihi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shsihi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shsihi.dir/build: shsihi
.PHONY : CMakeFiles/shsihi.dir/build

CMakeFiles/shsihi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shsihi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shsihi.dir/clean

CMakeFiles/shsihi.dir/depend:
	cd /home/lmx/CLionProjects/new_detection-main/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lmx/CLionProjects/new_detection-main /home/lmx/CLionProjects/new_detection-main /home/lmx/CLionProjects/new_detection-main/cmake-build-debug /home/lmx/CLionProjects/new_detection-main/cmake-build-debug /home/lmx/CLionProjects/new_detection-main/cmake-build-debug/CMakeFiles/shsihi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shsihi.dir/depend

