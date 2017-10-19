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
include tests/CMakeFiles/test_data_structures.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_data_structures.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_data_structures.dir/flags.make

tests/CMakeFiles/test_data_structures.dir/test_data_structures.o: tests/CMakeFiles/test_data_structures.dir/flags.make
tests/CMakeFiles/test_data_structures.dir/test_data_structures.o: ../tests/test_data_structures.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/CMakeFiles/test_data_structures.dir/test_data_structures.o"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/test_data_structures.dir/test_data_structures.o   -c /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_data_structures.c

tests/CMakeFiles/test_data_structures.dir/test_data_structures.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_data_structures.dir/test_data_structures.i"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_data_structures.c > CMakeFiles/test_data_structures.dir/test_data_structures.i

tests/CMakeFiles/test_data_structures.dir/test_data_structures.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_data_structures.dir/test_data_structures.s"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests/test_data_structures.c -o CMakeFiles/test_data_structures.dir/test_data_structures.s

tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.requires:
.PHONY : tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.requires

tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.provides: tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.requires
	$(MAKE) -f tests/CMakeFiles/test_data_structures.dir/build.make tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.provides.build
.PHONY : tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.provides

tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.provides.build: tests/CMakeFiles/test_data_structures.dir/test_data_structures.o

# Object files for target test_data_structures
test_data_structures_OBJECTS = \
"CMakeFiles/test_data_structures.dir/test_data_structures.o"

# External object files for target test_data_structures
test_data_structures_EXTERNAL_OBJECTS =

tests/test_data_structures: tests/CMakeFiles/test_data_structures.dir/test_data_structures.o
tests/test_data_structures: tests/CMakeFiles/test_data_structures.dir/build.make
tests/test_data_structures: src/libavro.a
tests/test_data_structures: /usr/lib64/libz.so
tests/test_data_structures: /lib64/libsnappy.so
tests/test_data_structures: tests/CMakeFiles/test_data_structures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable test_data_structures"
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_data_structures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_data_structures.dir/build: tests/test_data_structures
.PHONY : tests/CMakeFiles/test_data_structures.dir/build

tests/CMakeFiles/test_data_structures.dir/requires: tests/CMakeFiles/test_data_structures.dir/test_data_structures.o.requires
.PHONY : tests/CMakeFiles/test_data_structures.dir/requires

tests/CMakeFiles/test_data_structures.dir/clean:
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_data_structures.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_data_structures.dir/clean

tests/CMakeFiles/test_data_structures.dir/depend:
	cd /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2 /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/tests /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests /home/linuspy/coding/java/hadoop/Chapter4/avro-c-1.8.2/build/tests/CMakeFiles/test_data_structures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_data_structures.dir/depend

