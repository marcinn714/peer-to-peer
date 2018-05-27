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


    InfoMessage *msg = new InfoMessage(102);
    NodeInfo * nInfo = NetMainThread::getNodeInfo();
    for(auto addr : nInfo->getAllNodes()) {
        NetUtils::sendInfoMsgUDP(msg, NetUtils::stringIpToNetIp(addr), NetMainThread::port);
    }
}
