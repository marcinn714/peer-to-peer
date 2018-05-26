//
// Created by marcin on 18.05.18.
//

#include <iostream>
#include "PrintP2PStats.h"
#include "netCommunication/NetUtils.h"
#include "NetMainThread.h"


void PrintP2PStats::execute(void)
{
    if (NetMainThread::getNodeInfo() == nullptr)
        return;
    NodeInfo * nodeInfo = NetMainThread::getNodeInfo();
    std::cout << "\nP2P network statistics: "<< std::endl;
    for (auto addr : nodeInfo->getAllNodes()) {
        std::cout << addr << std::endl;
    }
}