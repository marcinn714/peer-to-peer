//
// Created by marcin on 18.05.18.
//

#include "ListFilesRequest.h"


void ListFilesRequest::sendInfoMsgUDP(struct in_addr * in_addr)
{
    commonSocketAddrIn.sin_addr = *in_addr;
    if (sendto(commonSocketFd, &requestFilesMessage, sizeof(requestFilesMessage),
               0, (struct sockaddr*) &commonSocketAddrIn, sizeof(commonSocketAddrIn)) < 0)
    {
        Command::printErrAndDie(this, "sendto");
        std::cout<<"List request to "<< inet_ntoa(*in_addr) <<" host failed..."<<std::endl;
    }
}

void ListFilesRequest::execute(void)
{
    if (NetMainThread::getNodeInfo() == nullptr)
        return;
    //socket
    if ((commonSocketFd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) < 0){
        Command::printErrAndDie(this, "socket");
        std::cout<<"List request - socket create - failed..."<<std::endl;
    }

    memset((char *) &commonSocketAddrIn, 0, sizeof(commonSocketAddrIn));
    commonSocketAddrIn.sin_family = AF_INET;
    commonSocketAddrIn.sin_port = htons(NetMainThread::port);

    NodeInfo * nInfo = NetMainThread::getNodeInfo();
    for(auto addr : nInfo->getAllNodes()) {
        struct in_addr ip;
        std::string a = addr;
        inet_pton(AF_INET, a.c_str(), &ip);
        sendInfoMsgUDP(&ip);
    }
}
