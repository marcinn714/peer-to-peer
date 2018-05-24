//
// Created by marcin on 16.05.18.
//

#include "FilesTableReceive.h"
#include "NetMainThread.h"
#include <iostream>

void FilesTableReceive::execute()
{
    const unsigned bufSize = 25*32; // 32 is size of hash (string)
    char buf[bufSize];
    int readBytes;
    std::string tmpHash;

    do {
        memset(buf, 0, sizeof(buf));
        if ((readBytes = read(socketFd,buf, bufSize)) == -1)
            perror("reading stream message");
        if (readBytes != 0)
        {
                for(unsigned i = 0; i < (unsigned)readBytes/32; ++i)
                {
                    tmpHash.assign(&buf[i*32], 32);
                    std::cout<<"File name - ower: "
                             << tmpHash <<  " - " << sendingIp.s_addr << std::endl;
                    NetMainThread::getNodeInfo()->addFileToFilesInNetwork(tmpHash, sendingIp);
                }
        }
    } while (readBytes != 0);
    close(socketFd);
}
