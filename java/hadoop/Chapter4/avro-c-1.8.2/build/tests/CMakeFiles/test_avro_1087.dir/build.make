# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_avro_1087.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_avro_1087.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_avro_1087.dir/flags.make

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o: tests/CMakeFiles/test_avro_1087.dir/flags.make
tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o: ../tests/test_avro_1087.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/test_avro_1087.dir/test_avro_1087.o   -c /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_avro_1087.c

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_avro_1087.dir/test_avro_1087.i"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_avro_1087.c > CMakeFiles/test_avro_1087.dir/test_avro_1087.i

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_avro_1087.dir/test_avro_1087.s"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_avro_1087.c -o CMakeFiles/test_avro_1087.dir/test_avro_1087.s

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.requires:
.PHONY : tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.requires

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.provides: tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.requires
	$(MAKE) -f tests/CMakeFiles/test_avro_1087.dir/build.make tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.provides.build
.PHONY : tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.provides

tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.provides.build: tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o

# Object files for target test_avro_1087
test_avro_1087_OBJECTS = \
"CMakeFiles/test_avro_1087.dir/test_avro_1087.o"

# External object files for target test_avro_1087
test_avro_1087_EXTERNAL_OBJECTS =

tests/test_avro_1087: tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o
tests/test_avro_1087: tests/CMakeFiles/test_avro_1087.dir/build.make
tests/test_avro_1087: src/libavro.a
tests/test_avro_1087: /usr/lib64/libz.so
tests/test_avro_1087: /lib64/libsnappy.so
tests/test_avro_1087: tests/CMakeFiles/test_avro_1087.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable test_avro_1087"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_avro_1087.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_avro_1087.dir/build: tests/test_avro_1087
.PHONY : tests/CMakeFiles/test_avro_1087.dir/build

tests/CMakeFiles/test_avro_1087.dir/requires: tests/CMakeFiles/test_avro_1087.dir/test_avro_1087.o.requires
.PHONY : tests/CMakeFiles/test_avro_1087.dir/requires

tests/CMakeFiles/test_avro_1087.dir/clean:
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_avro_1087.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_avro_1087.dir/clean

tests/CMakeFiles/test_avro_1087.dir/depend:
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2 /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests/CMakeFiles/test_avro_1087.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_avro_1087.dir/depend

