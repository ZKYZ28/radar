# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Documents/Code/radar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Documents/Code/radar/build

# Include any dependencies generated for this target.
include gui/CMakeFiles/radar_gui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include gui/CMakeFiles/radar_gui.dir/compiler_depend.make

# Include the progress variables for this target.
include gui/CMakeFiles/radar_gui.dir/progress.make

# Include the compile flags for this target's objects.
include gui/CMakeFiles/radar_gui.dir/flags.make

gui/CMakeFiles/radar_gui.dir/radar_gui.c.o: gui/CMakeFiles/radar_gui.dir/flags.make
gui/CMakeFiles/radar_gui.dir/radar_gui.c.o: /home/pi/Documents/Code/radar/gui/radar_gui.c
gui/CMakeFiles/radar_gui.dir/radar_gui.c.o: gui/CMakeFiles/radar_gui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Code/radar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object gui/CMakeFiles/radar_gui.dir/radar_gui.c.o"
	cd /home/pi/Documents/Code/radar/build/gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT gui/CMakeFiles/radar_gui.dir/radar_gui.c.o -MF CMakeFiles/radar_gui.dir/radar_gui.c.o.d -o CMakeFiles/radar_gui.dir/radar_gui.c.o -c /home/pi/Documents/Code/radar/gui/radar_gui.c

gui/CMakeFiles/radar_gui.dir/radar_gui.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/radar_gui.dir/radar_gui.c.i"
	cd /home/pi/Documents/Code/radar/build/gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Documents/Code/radar/gui/radar_gui.c > CMakeFiles/radar_gui.dir/radar_gui.c.i

gui/CMakeFiles/radar_gui.dir/radar_gui.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/radar_gui.dir/radar_gui.c.s"
	cd /home/pi/Documents/Code/radar/build/gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Documents/Code/radar/gui/radar_gui.c -o CMakeFiles/radar_gui.dir/radar_gui.c.s

# Object files for target radar_gui
radar_gui_OBJECTS = \
"CMakeFiles/radar_gui.dir/radar_gui.c.o"

# External object files for target radar_gui
radar_gui_EXTERNAL_OBJECTS =

gui/libradar_gui.a: gui/CMakeFiles/radar_gui.dir/radar_gui.c.o
gui/libradar_gui.a: gui/CMakeFiles/radar_gui.dir/build.make
gui/libradar_gui.a: gui/CMakeFiles/radar_gui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Documents/Code/radar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libradar_gui.a"
	cd /home/pi/Documents/Code/radar/build/gui && $(CMAKE_COMMAND) -P CMakeFiles/radar_gui.dir/cmake_clean_target.cmake
	cd /home/pi/Documents/Code/radar/build/gui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/radar_gui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gui/CMakeFiles/radar_gui.dir/build: gui/libradar_gui.a
.PHONY : gui/CMakeFiles/radar_gui.dir/build

gui/CMakeFiles/radar_gui.dir/clean:
	cd /home/pi/Documents/Code/radar/build/gui && $(CMAKE_COMMAND) -P CMakeFiles/radar_gui.dir/cmake_clean.cmake
.PHONY : gui/CMakeFiles/radar_gui.dir/clean

gui/CMakeFiles/radar_gui.dir/depend:
	cd /home/pi/Documents/Code/radar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/Code/radar /home/pi/Documents/Code/radar/gui /home/pi/Documents/Code/radar/build /home/pi/Documents/Code/radar/build/gui /home/pi/Documents/Code/radar/build/gui/CMakeFiles/radar_gui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gui/CMakeFiles/radar_gui.dir/depend

