# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/marcin/projects/tinn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcin/projects/tinn

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/marcin/projects/tinn/CMakeFiles /home/marcin/projects/tinn/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/marcin/projects/tinn/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named tinn

# Build rule for target.
tinn: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tinn
.PHONY : tinn

# fast build rule for target.
tinn/fast:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/build
.PHONY : tinn/fast

FilesTableReceive.o: FilesTableReceive.cpp.o

.PHONY : FilesTableReceive.o

# target to build an object file
FilesTableReceive.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableReceive.cpp.o
.PHONY : FilesTableReceive.cpp.o

FilesTableReceive.i: FilesTableReceive.cpp.i

.PHONY : FilesTableReceive.i

# target to preprocess a source file
FilesTableReceive.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableReceive.cpp.i
.PHONY : FilesTableReceive.cpp.i

FilesTableReceive.s: FilesTableReceive.cpp.s

.PHONY : FilesTableReceive.s

# target to generate assembly for a file
FilesTableReceive.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableReceive.cpp.s
.PHONY : FilesTableReceive.cpp.s

FilesTableSend.o: FilesTableSend.cpp.o

.PHONY : FilesTableSend.o

# target to build an object file
FilesTableSend.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableSend.cpp.o
.PHONY : FilesTableSend.cpp.o

FilesTableSend.i: FilesTableSend.cpp.i

.PHONY : FilesTableSend.i

# target to preprocess a source file
FilesTableSend.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableSend.cpp.i
.PHONY : FilesTableSend.cpp.i

FilesTableSend.s: FilesTableSend.cpp.s

.PHONY : FilesTableSend.s

# target to generate assembly for a file
FilesTableSend.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/FilesTableSend.cpp.s
.PHONY : FilesTableSend.cpp.s

GetFile.o: GetFile.cpp.o

.PHONY : GetFile.o

# target to build an object file
GetFile.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/GetFile.cpp.o
.PHONY : GetFile.cpp.o

GetFile.i: GetFile.cpp.i

.PHONY : GetFile.i

# target to preprocess a source file
GetFile.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/GetFile.cpp.i
.PHONY : GetFile.cpp.i

GetFile.s: GetFile.cpp.s

.PHONY : GetFile.s

# target to generate assembly for a file
GetFile.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/GetFile.cpp.s
.PHONY : GetFile.cpp.s

Leave.o: Leave.cpp.o

.PHONY : Leave.o

# target to build an object file
Leave.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/Leave.cpp.o
.PHONY : Leave.cpp.o

Leave.i: Leave.cpp.i

.PHONY : Leave.i

# target to preprocess a source file
Leave.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/Leave.cpp.i
.PHONY : Leave.cpp.i

Leave.s: Leave.cpp.s

.PHONY : Leave.s

# target to generate assembly for a file
Leave.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/Leave.cpp.s
.PHONY : Leave.cpp.s

ListFilesRequest.o: ListFilesRequest.cpp.o

.PHONY : ListFilesRequest.o

# target to build an object file
ListFilesRequest.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ListFilesRequest.cpp.o
.PHONY : ListFilesRequest.cpp.o

ListFilesRequest.i: ListFilesRequest.cpp.i

.PHONY : ListFilesRequest.i

# target to preprocess a source file
ListFilesRequest.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ListFilesRequest.cpp.i
.PHONY : ListFilesRequest.cpp.i

ListFilesRequest.s: ListFilesRequest.cpp.s

.PHONY : ListFilesRequest.s

# target to generate assembly for a file
ListFilesRequest.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ListFilesRequest.cpp.s
.PHONY : ListFilesRequest.cpp.s

NetMainThread.o: NetMainThread.cpp.o

.PHONY : NetMainThread.o

# target to build an object file
NetMainThread.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NetMainThread.cpp.o
.PHONY : NetMainThread.cpp.o

NetMainThread.i: NetMainThread.cpp.i

.PHONY : NetMainThread.i

# target to preprocess a source file
NetMainThread.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NetMainThread.cpp.i
.PHONY : NetMainThread.cpp.i

NetMainThread.s: NetMainThread.cpp.s

.PHONY : NetMainThread.s

# target to generate assembly for a file
NetMainThread.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NetMainThread.cpp.s
.PHONY : NetMainThread.cpp.s

NodeInfo.o: NodeInfo.cpp.o

.PHONY : NodeInfo.o

# target to build an object file
NodeInfo.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NodeInfo.cpp.o
.PHONY : NodeInfo.cpp.o

NodeInfo.i: NodeInfo.cpp.i

.PHONY : NodeInfo.i

# target to preprocess a source file
NodeInfo.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NodeInfo.cpp.i
.PHONY : NodeInfo.cpp.i

NodeInfo.s: NodeInfo.cpp.s

.PHONY : NodeInfo.s

# target to generate assembly for a file
NodeInfo.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/NodeInfo.cpp.s
.PHONY : NodeInfo.cpp.s

PrintStats.o: PrintStats.cpp.o

.PHONY : PrintStats.o

# target to build an object file
PrintStats.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/PrintStats.cpp.o
.PHONY : PrintStats.cpp.o

PrintStats.i: PrintStats.cpp.i

.PHONY : PrintStats.i

# target to preprocess a source file
PrintStats.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/PrintStats.cpp.i
.PHONY : PrintStats.cpp.i

PrintStats.s: PrintStats.cpp.s

.PHONY : PrintStats.s

# target to generate assembly for a file
PrintStats.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/PrintStats.cpp.s
.PHONY : PrintStats.cpp.s

ReceiveFileTcp.o: ReceiveFileTcp.cpp.o

.PHONY : ReceiveFileTcp.o

# target to build an object file
ReceiveFileTcp.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ReceiveFileTcp.cpp.o
.PHONY : ReceiveFileTcp.cpp.o

ReceiveFileTcp.i: ReceiveFileTcp.cpp.i

.PHONY : ReceiveFileTcp.i

# target to preprocess a source file
ReceiveFileTcp.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ReceiveFileTcp.cpp.i
.PHONY : ReceiveFileTcp.cpp.i

ReceiveFileTcp.s: ReceiveFileTcp.cpp.s

.PHONY : ReceiveFileTcp.s

# target to generate assembly for a file
ReceiveFileTcp.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/ReceiveFileTcp.cpp.s
.PHONY : ReceiveFileTcp.cpp.s

RemoveFile.o: RemoveFile.cpp.o

.PHONY : RemoveFile.o

# target to build an object file
RemoveFile.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/RemoveFile.cpp.o
.PHONY : RemoveFile.cpp.o

RemoveFile.i: RemoveFile.cpp.i

.PHONY : RemoveFile.i

# target to preprocess a source file
RemoveFile.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/RemoveFile.cpp.i
.PHONY : RemoveFile.cpp.i

RemoveFile.s: RemoveFile.cpp.s

.PHONY : RemoveFile.s

# target to generate assembly for a file
RemoveFile.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/RemoveFile.cpp.s
.PHONY : RemoveFile.cpp.s

SendFileTcp.o: SendFileTcp.cpp.o

.PHONY : SendFileTcp.o

# target to build an object file
SendFileTcp.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/SendFileTcp.cpp.o
.PHONY : SendFileTcp.cpp.o

SendFileTcp.i: SendFileTcp.cpp.i

.PHONY : SendFileTcp.i

# target to preprocess a source file
SendFileTcp.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/SendFileTcp.cpp.i
.PHONY : SendFileTcp.cpp.i

SendFileTcp.s: SendFileTcp.cpp.s

.PHONY : SendFileTcp.s

# target to generate assembly for a file
SendFileTcp.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/SendFileTcp.cpp.s
.PHONY : SendFileTcp.cpp.s

TcpMainService.o: TcpMainService.cpp.o

.PHONY : TcpMainService.o

# target to build an object file
TcpMainService.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/TcpMainService.cpp.o
.PHONY : TcpMainService.cpp.o

TcpMainService.i: TcpMainService.cpp.i

.PHONY : TcpMainService.i

# target to preprocess a source file
TcpMainService.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/TcpMainService.cpp.i
.PHONY : TcpMainService.cpp.i

TcpMainService.s: TcpMainService.cpp.s

.PHONY : TcpMainService.s

# target to generate assembly for a file
TcpMainService.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/TcpMainService.cpp.s
.PHONY : TcpMainService.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/main.cpp.s
.PHONY : main.cpp.s

messages/MessageFrames.o: messages/MessageFrames.cpp.o

.PHONY : messages/MessageFrames.o

# target to build an object file
messages/MessageFrames.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/messages/MessageFrames.cpp.o
.PHONY : messages/MessageFrames.cpp.o

messages/MessageFrames.i: messages/MessageFrames.cpp.i

.PHONY : messages/MessageFrames.i

# target to preprocess a source file
messages/MessageFrames.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/messages/MessageFrames.cpp.i
.PHONY : messages/MessageFrames.cpp.i

messages/MessageFrames.s: messages/MessageFrames.cpp.s

.PHONY : messages/MessageFrames.s

# target to generate assembly for a file
messages/MessageFrames.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/messages/MessageFrames.cpp.s
.PHONY : messages/MessageFrames.cpp.s

netCommunication/NetUtils.o: netCommunication/NetUtils.cpp.o

.PHONY : netCommunication/NetUtils.o

# target to build an object file
netCommunication/NetUtils.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/NetUtils.cpp.o
.PHONY : netCommunication/NetUtils.cpp.o

netCommunication/NetUtils.i: netCommunication/NetUtils.cpp.i

.PHONY : netCommunication/NetUtils.i

# target to preprocess a source file
netCommunication/NetUtils.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/NetUtils.cpp.i
.PHONY : netCommunication/NetUtils.cpp.i

netCommunication/NetUtils.s: netCommunication/NetUtils.cpp.s

.PHONY : netCommunication/NetUtils.s

# target to generate assembly for a file
netCommunication/NetUtils.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/NetUtils.cpp.s
.PHONY : netCommunication/NetUtils.cpp.s

netCommunication/TcpCommunication.o: netCommunication/TcpCommunication.cpp.o

.PHONY : netCommunication/TcpCommunication.o

# target to build an object file
netCommunication/TcpCommunication.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/TcpCommunication.cpp.o
.PHONY : netCommunication/TcpCommunication.cpp.o

netCommunication/TcpCommunication.i: netCommunication/TcpCommunication.cpp.i

.PHONY : netCommunication/TcpCommunication.i

# target to preprocess a source file
netCommunication/TcpCommunication.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/TcpCommunication.cpp.i
.PHONY : netCommunication/TcpCommunication.cpp.i

netCommunication/TcpCommunication.s: netCommunication/TcpCommunication.cpp.s

.PHONY : netCommunication/TcpCommunication.s

# target to generate assembly for a file
netCommunication/TcpCommunication.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/TcpCommunication.cpp.s
.PHONY : netCommunication/TcpCommunication.cpp.s

netCommunication/UdpCommunication.o: netCommunication/UdpCommunication.cpp.o

.PHONY : netCommunication/UdpCommunication.o

# target to build an object file
netCommunication/UdpCommunication.cpp.o:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/UdpCommunication.cpp.o
.PHONY : netCommunication/UdpCommunication.cpp.o

netCommunication/UdpCommunication.i: netCommunication/UdpCommunication.cpp.i

.PHONY : netCommunication/UdpCommunication.i

# target to preprocess a source file
netCommunication/UdpCommunication.cpp.i:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/UdpCommunication.cpp.i
.PHONY : netCommunication/UdpCommunication.cpp.i

netCommunication/UdpCommunication.s: netCommunication/UdpCommunication.cpp.s

.PHONY : netCommunication/UdpCommunication.s

# target to generate assembly for a file
netCommunication/UdpCommunication.cpp.s:
	$(MAKE) -f CMakeFiles/tinn.dir/build.make CMakeFiles/tinn.dir/netCommunication/UdpCommunication.cpp.s
.PHONY : netCommunication/UdpCommunication.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... tinn"
	@echo "... FilesTableReceive.o"
	@echo "... FilesTableReceive.i"
	@echo "... FilesTableReceive.s"
	@echo "... FilesTableSend.o"
	@echo "... FilesTableSend.i"
	@echo "... FilesTableSend.s"
	@echo "... GetFile.o"
	@echo "... GetFile.i"
	@echo "... GetFile.s"
	@echo "... Leave.o"
	@echo "... Leave.i"
	@echo "... Leave.s"
	@echo "... ListFilesRequest.o"
	@echo "... ListFilesRequest.i"
	@echo "... ListFilesRequest.s"
	@echo "... NetMainThread.o"
	@echo "... NetMainThread.i"
	@echo "... NetMainThread.s"
	@echo "... NodeInfo.o"
	@echo "... NodeInfo.i"
	@echo "... NodeInfo.s"
	@echo "... PrintStats.o"
	@echo "... PrintStats.i"
	@echo "... PrintStats.s"
	@echo "... ReceiveFileTcp.o"
	@echo "... ReceiveFileTcp.i"
	@echo "... ReceiveFileTcp.s"
	@echo "... RemoveFile.o"
	@echo "... RemoveFile.i"
	@echo "... RemoveFile.s"
	@echo "... SendFileTcp.o"
	@echo "... SendFileTcp.i"
	@echo "... SendFileTcp.s"
	@echo "... TcpMainService.o"
	@echo "... TcpMainService.i"
	@echo "... TcpMainService.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... messages/MessageFrames.o"
	@echo "... messages/MessageFrames.i"
	@echo "... messages/MessageFrames.s"
	@echo "... netCommunication/NetUtils.o"
	@echo "... netCommunication/NetUtils.i"
	@echo "... netCommunication/NetUtils.s"
	@echo "... netCommunication/TcpCommunication.o"
	@echo "... netCommunication/TcpCommunication.i"
	@echo "... netCommunication/TcpCommunication.s"
	@echo "... netCommunication/UdpCommunication.o"
	@echo "... netCommunication/UdpCommunication.i"
	@echo "... netCommunication/UdpCommunication.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

