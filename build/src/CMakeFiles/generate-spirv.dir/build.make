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
CMAKE_SOURCE_DIR = /home/haitien/Music/my_retinaface_ncnn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haitien/Music/my_retinaface_ncnn/build

# Utility rule file for generate-spirv.

# Include the progress variables for this target.
include src/CMakeFiles/generate-spirv.dir/progress.make

generate-spirv: src/CMakeFiles/generate-spirv.dir/build.make

.PHONY : generate-spirv

# Rule to build all files generated by this target.
src/CMakeFiles/generate-spirv.dir/build: generate-spirv

.PHONY : src/CMakeFiles/generate-spirv.dir/build

src/CMakeFiles/generate-spirv.dir/clean:
	cd /home/haitien/Music/my_retinaface_ncnn/build/src && $(CMAKE_COMMAND) -P CMakeFiles/generate-spirv.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/generate-spirv.dir/clean

src/CMakeFiles/generate-spirv.dir/depend:
	cd /home/haitien/Music/my_retinaface_ncnn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haitien/Music/my_retinaface_ncnn /home/haitien/Music/my_retinaface_ncnn/src /home/haitien/Music/my_retinaface_ncnn/build /home/haitien/Music/my_retinaface_ncnn/build/src /home/haitien/Music/my_retinaface_ncnn/build/src/CMakeFiles/generate-spirv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/generate-spirv.dir/depend
