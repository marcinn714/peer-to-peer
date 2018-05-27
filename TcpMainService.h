//
// Created by marcin on 16.05.18.
//

#ifndef TIN_TCPMAINSERVICE_H
#define TIN_TCPMAINSERVICE_H


#include "Command.h"
#include <cstdlib>
#include <pthread.h>
#include <string>
#include <unistd.h>
#include "MessageFrames.h"
#include "FilesTableReceive.h"
#include "ReceiveFileTcp.h"
#include "netCommunication/TcpCommunication.h"

class TcpMainService: public Command
{
public:
    TcpMainService() {tcpCommunication = new TcpCommunication();}
    virtual ~TcpMainService() = default;

    void execute(void);
    bool reqSeparateThread(void) {	return true; };

private:
    Command * getCommand(size_t opcode, int socketFd, struct in_addr requestingIp);
    void tcpServiceLoop(void);
    TcpCommunication * tcpCommunication;
};


#endif //TIN_TCPMAINSERVICE_H
