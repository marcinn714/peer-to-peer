//
// Created by marcin on 27.05.18.
//

#include "TcpCommunication.h"
#include "../NetMainThread.h"


bool TcpCommunication::sendFileTCP(std::string hash, std::string* stringFile, struct in_addr ip) {
    int sockfd = 0;
    struct sockaddr_in serv_addr;

    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return false;

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(NetMainThread::port);
    serv_addr.sin_addr = ip;

    if(connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
        return false;

    size_t opcode = 301;

    write(sockfd, &opcode, sizeof(size_t));
    write(sockfd, hash.c_str(), InfoMessage::FILE_NAME_SIZE);
    write(sockfd, stringFile->c_str(), stringFile->size());

    close(sockfd);
    return true;
}

size_t TcpCommunication::receiveOpcode(int * msgsock, struct sockaddr_in *client) {
    size_t opcode;
    int readBytes;
    unsigned addrlen = sizeof(*client);
    if ((*msgsock = accept(sock, (struct sockaddr *) client, &addrlen)) < 0) {
        perror("accept");
    } else {
        memset(&opcode, 0, sizeof(opcode));
        if ((readBytes = read(*msgsock, &opcode, sizeof(size_t))) == -1)
            perror("reading stream message");
        if (readBytes == 0)
            std::cout << "Ending connection" << std::endl;
        else
            return opcode;
    }
    return 0;
}

void TcpCommunication::createAndConfigureSocket() {
    struct sockaddr_in server;

    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        perror("opening stream socket");
        exit(1);
    }

    // Bind address to the socket
    memset(&server, 0, sizeof(server));
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons(NetMainThread::port);
    if (bind(sock, (struct sockaddr *) &server, sizeof server) < 0){
        perror("binding stream socket");
        exit(1);
    }
    // Start listen on tcp socket
    listen(sock, 5);
}

void TcpCommunication::closeSocket() {
    close(sock);
}

