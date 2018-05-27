//
// Created by marcin on 16.05.18.
//

#ifndef FILESTABLERECEIVE_H_
#define FILESTABLERECEIVE_H_

#include "Command.hpp"
#include <cstdlib>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>

class FilesTableReceive: public Command
{
public:
    explicit FilesTableReceive( int _socketFd, struct in_addr ip) : socketFd(_socketFd) {sendingIp = ip; };
    virtual ~FilesTableReceive() {};

    void execute();
    bool reqSeparateThread(void) {	return true; }
private:
    int socketFd;
    struct in_addr sendingIp;
};

#endif /* FILESTABLERECEIVE_H_ */

