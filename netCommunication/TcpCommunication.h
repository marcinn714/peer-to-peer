//
// Created by marcin on 27.05.18.
//

#ifndef TINN_TCPCOMMUNICATION_H
#define TINN_TCPCOMMUNICATION_H

#include <string>
#include <netinet/in.h>
#include <cstdlib>
#include <pthread.h>
#include <string>
#include <unistd.h>

class TcpCommunication {
public:
    static bool sendFileTCP(std::string hash, std::string* stringFile, struct in_addr ip);
    static size_t receiveOpcode(int socket, struct sockaddr_in client);
};


#endif //TINN_TCPCOMMUNICATION_H
