# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial

# Include any dependencies generated for this target.
include CMakeFiles/31_scrolling_backgrounds.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/31_scrolling_backgrounds.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/31_scrolling_backgrounds.dir/flags.make

CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o: CMakeFiles/31_scrolling_backgrounds.dir/flags.make
CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o: 31_scrolling_backgrounds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o -c /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/31_scrolling_backgrounds.cpp

CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/31_scrolling_backgrounds.cpp > CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.i

CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/31_scrolling_backgrounds.cpp -o CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.s

# Object files for target 31_scrolling_backgrounds
31_scrolling_backgrounds_OBJECTS = \
"CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o"

# External object files for target 31_scrolling_backgrounds
31_scrolling_backgrounds_EXTERNAL_OBJECTS =

exe/31_scrolling_backgrounds: CMakeFiles/31_scrolling_backgrounds.dir/31_scrolling_backgrounds.cpp.o
exe/31_scrolling_backgrounds: CMakeFiles/31_scrolling_backgrounds.dir/build.make
exe/31_scrolling_backgrounds: CMakeFiles/31_scrolling_backgrounds.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable exe/31_scrolling_backgrounds"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/31_scrolling_backgrounds.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/31_scrolling_backgrounds.dir/build: exe/31_scrolling_backgrounds

.PHONY : CMakeFiles/31_scrolling_backgrounds.dir/build

CMakeFiles/31_scrolling_backgrounds.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/31_scrolling_backgrounds.dir/cmake_clean.cmake
.PHONY : CMakeFiles/31_scrolling_backgrounds.dir/clean

CMakeFiles/31_scrolling_backgrounds.dir/depend:
	cd /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial /Users/ToriumiSachiyo/Downloads/mitsugu/program/tutorial/CMakeFiles/31_scrolling_backgrounds.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/31_scrolling_backgrounds.dir/depend

