# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Lab2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab2.dir/flags.make

CMakeFiles/Lab2.dir/main.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab2.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lab2.dir/main.cpp.o -c /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/main.cpp

CMakeFiles/Lab2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/main.cpp > CMakeFiles/Lab2.dir/main.cpp.i

CMakeFiles/Lab2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/main.cpp -o CMakeFiles/Lab2.dir/main.cpp.s

CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o: CMakeFiles/Lab2.dir/flags.make
CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o: ../lab2_drones_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o -c /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/lab2_drones_manager.cpp

CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/lab2_drones_manager.cpp > CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.i

CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/lab2_drones_manager.cpp -o CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.s

# Object files for target Lab2
Lab2_OBJECTS = \
"CMakeFiles/Lab2.dir/main.cpp.o" \
"CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o"

# External object files for target Lab2
Lab2_EXTERNAL_OBJECTS =

Lab2: CMakeFiles/Lab2.dir/main.cpp.o
Lab2: CMakeFiles/Lab2.dir/lab2_drones_manager.cpp.o
Lab2: CMakeFiles/Lab2.dir/build.make
Lab2: CMakeFiles/Lab2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Lab2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab2.dir/build: Lab2

.PHONY : CMakeFiles/Lab2.dir/build

CMakeFiles/Lab2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab2.dir/clean

CMakeFiles/Lab2.dir/depend:
	cd /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2 /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2 /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug /Users/marymcphee/CLionProjects/SYDE-223-Labs/Lab2/cmake-build-debug/CMakeFiles/Lab2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lab2.dir/depend

