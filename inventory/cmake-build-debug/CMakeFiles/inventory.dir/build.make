# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/user/CLionProjects/inventory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/user/CLionProjects/inventory/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/inventory.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/inventory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/inventory.dir/flags.make

CMakeFiles/inventory.dir/main.cpp.o: CMakeFiles/inventory.dir/flags.make
CMakeFiles/inventory.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/CLionProjects/inventory/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/inventory.dir/main.cpp.o"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/inventory.dir/main.cpp.o -c /Users/user/CLionProjects/inventory/main.cpp

CMakeFiles/inventory.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inventory.dir/main.cpp.i"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/CLionProjects/inventory/main.cpp > CMakeFiles/inventory.dir/main.cpp.i

CMakeFiles/inventory.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inventory.dir/main.cpp.s"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/CLionProjects/inventory/main.cpp -o CMakeFiles/inventory.dir/main.cpp.s

CMakeFiles/inventory.dir/Inventory.cpp.o: CMakeFiles/inventory.dir/flags.make
CMakeFiles/inventory.dir/Inventory.cpp.o: ../Inventory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/CLionProjects/inventory/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/inventory.dir/Inventory.cpp.o"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/inventory.dir/Inventory.cpp.o -c /Users/user/CLionProjects/inventory/Inventory.cpp

CMakeFiles/inventory.dir/Inventory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inventory.dir/Inventory.cpp.i"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/CLionProjects/inventory/Inventory.cpp > CMakeFiles/inventory.dir/Inventory.cpp.i

CMakeFiles/inventory.dir/Inventory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inventory.dir/Inventory.cpp.s"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/CLionProjects/inventory/Inventory.cpp -o CMakeFiles/inventory.dir/Inventory.cpp.s

CMakeFiles/inventory.dir/Box.cpp.o: CMakeFiles/inventory.dir/flags.make
CMakeFiles/inventory.dir/Box.cpp.o: ../Box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/CLionProjects/inventory/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/inventory.dir/Box.cpp.o"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/inventory.dir/Box.cpp.o -c /Users/user/CLionProjects/inventory/Box.cpp

CMakeFiles/inventory.dir/Box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inventory.dir/Box.cpp.i"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/CLionProjects/inventory/Box.cpp > CMakeFiles/inventory.dir/Box.cpp.i

CMakeFiles/inventory.dir/Box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inventory.dir/Box.cpp.s"
	/usr/local/Cellar/gcc/11.2.0/bin/g++-11 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/CLionProjects/inventory/Box.cpp -o CMakeFiles/inventory.dir/Box.cpp.s

# Object files for target inventory
inventory_OBJECTS = \
"CMakeFiles/inventory.dir/main.cpp.o" \
"CMakeFiles/inventory.dir/Inventory.cpp.o" \
"CMakeFiles/inventory.dir/Box.cpp.o"

# External object files for target inventory
inventory_EXTERNAL_OBJECTS =

inventory: CMakeFiles/inventory.dir/main.cpp.o
inventory: CMakeFiles/inventory.dir/Inventory.cpp.o
inventory: CMakeFiles/inventory.dir/Box.cpp.o
inventory: CMakeFiles/inventory.dir/build.make
inventory: CMakeFiles/inventory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/user/CLionProjects/inventory/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable inventory"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inventory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/inventory.dir/build: inventory
.PHONY : CMakeFiles/inventory.dir/build

CMakeFiles/inventory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/inventory.dir/cmake_clean.cmake
.PHONY : CMakeFiles/inventory.dir/clean

CMakeFiles/inventory.dir/depend:
	cd /Users/user/CLionProjects/inventory/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/user/CLionProjects/inventory /Users/user/CLionProjects/inventory /Users/user/CLionProjects/inventory/cmake-build-debug /Users/user/CLionProjects/inventory/cmake-build-debug /Users/user/CLionProjects/inventory/cmake-build-debug/CMakeFiles/inventory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/inventory.dir/depend

