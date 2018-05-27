cmake_minimum_required(VERSION 3.5)
project(tinn)

set(CMAKE_CXX_STANDARD 14)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

add_executable(tinn main.cpp NodeInfo.cpp NodeInfo.h Command.cpp Command.h netCommunication/NetUtils.cpp netCommunication/NetUtils.h NetMainThread.cpp NetMainThread.h MessageFrames.cpp MessageFrames.h TcpMainService.cpp TcpMainService.h ReceiveFileTcp.cpp ReceiveFileTcp.h AddFile.cpp AddFile.h FilesTableReceive.cpp FilesTableReceive.h GetFile.cpp GetFile.h RemoveFile.cpp RemoveFile.h ListFilesRequest.cpp ListFilesRequest.h Leave.cpp Leave.h PrintP2PStats.cpp PrintP2PStats.h SendFileTcp.cpp SendFileTcp.h FilesTableSend.cpp FilesTableSend.h netCommunication/TcpCommunication.cpp netCommunication/TcpCommunication.h netCommunication/UdpCommunication.cpp netCommunication/UdpCommunication.h)
