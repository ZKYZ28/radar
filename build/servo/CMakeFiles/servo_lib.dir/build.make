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
include servo/CMakeFiles/servo_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include servo/CMakeFiles/servo_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include servo/CMakeFiles/servo_lib.dir/progress.make

# Include the compile flags for this target's objects.
include servo/CMakeFiles/servo_lib.dir/flags.make

servo/CMakeFiles/servo_lib.dir/servo.c.o: servo/CMakeFiles/servo_lib.dir/flags.make
servo/CMakeFiles/servo_lib.dir/servo.c.o: /home/pi/Documents/Code/radar/servo/servo.c
servo/CMakeFiles/servo_lib.dir/servo.c.o: servo/CMakeFiles/servo_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/Code/radar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object servo/CMakeFiles/servo_lib.dir/servo.c.o"
	cd /home/pi/Documents/Code/radar/build/servo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT servo/CMakeFiles/servo_lib.dir/servo.c.o -MF CMakeFiles/servo_lib.dir/servo.c.o.d -o CMakeFiles/servo_lib.dir/servo.c.o -c /home/pi/Documents/Code/radar/servo/servo.c

servo/CMakeFiles/servo_lib.dir/servo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/servo_lib.dir/servo.c.i"
	cd /home/pi/Documents/Code/radar/build/servo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Documents/Code/radar/servo/servo.c > CMakeFiles/servo_lib.dir/servo.c.i

servo/CMakeFiles/servo_lib.dir/servo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/servo_lib.dir/servo.c.s"
	cd /home/pi/Documents/Code/radar/build/servo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Documents/Code/radar/servo/servo.c -o CMakeFiles/servo_lib.dir/servo.c.s

# Object files for target servo_lib
servo_lib_OBJECTS = \
"CMakeFiles/servo_lib.dir/servo.c.o"

# External object files for target servo_lib
servo_lib_EXTERNAL_OBJECTS =

servo/libservo_lib.a: servo/CMakeFiles/servo_lib.dir/servo.c.o
servo/libservo_lib.a: servo/CMakeFiles/servo_lib.dir/build.make
servo/libservo_lib.a: servo/CMakeFiles/servo_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Documents/Code/radar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libservo_lib.a"
	cd /home/pi/Documents/Code/radar/build/servo && $(CMAKE_COMMAND) -P CMakeFiles/servo_lib.dir/cmake_clean_target.cmake
	cd /home/pi/Documents/Code/radar/build/servo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/servo_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
servo/CMakeFiles/servo_lib.dir/build: servo/libservo_lib.a
.PHONY : servo/CMakeFiles/servo_lib.dir/build

servo/CMakeFiles/servo_lib.dir/clean:
	cd /home/pi/Documents/Code/radar/build/servo && $(CMAKE_COMMAND) -P CMakeFiles/servo_lib.dir/cmake_clean.cmake
.PHONY : servo/CMakeFiles/servo_lib.dir/clean

servo/CMakeFiles/servo_lib.dir/depend:
	cd /home/pi/Documents/Code/radar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/Code/radar /home/pi/Documents/Code/radar/servo /home/pi/Documents/Code/radar/build /home/pi/Documents/Code/radar/build/servo /home/pi/Documents/Code/radar/build/servo/CMakeFiles/servo_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : servo/CMakeFiles/servo_lib.dir/depend

