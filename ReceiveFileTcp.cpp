//
// Created by marcin on 16.05.18.
//

#include "ReceiveFileTcp.h"

void ReceiveFileTcp::execute(void)
{
    size_t ownerId;
    char buf[1024];
    char hash[33];

    int readBytes;
    if ((readBytes = read(socketFd, hash, 33)) < 0) //read filename
        perror("reading stream message");

    std::ofstream newFile(hash, std::ios::out);
    do {
        memset(buf, 0, sizeof(buf));
        if ((readBytes = read(socketFd, buf, 1024)) < 0)
            perror("reading stream message");
        if (readBytes != 0)
            newFile.write(buf, readBytes);
    } while (readBytes != 0);

    newFile.close();
    std::string fileHash(hash);
    if (opcode == 301)
        NetMainThread::getNodeInfo()->addLocalFile(fileHash);
    std::cout << "Added new file:\n\tFile's name: " << fileHash;
    close(socketFd);
}
