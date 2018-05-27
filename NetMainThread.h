//
// Created by marcin on 15.05.18.
//

#ifndef TIN_NETMAINTHREAD_H
#define TIN_NETMAINTHREAD_H
#include "Command.h"
#include "NodeInfo.h"
#include <string>
#include "netCommunication/NetUtils.h"

#include "MessageFrames.h"
#include "netCommunication/NetUtils.h"
#include "TcpMainService.h"
#include "FilesTableSend.h"
#include "netCommunication/UdpCommunication.h"

class NetMainThread: public Command
{
private:
    std::string broadcastAddress;
    int commonSocketFd;
    struct sockaddr_in  commonSocketAddrIn;
    pthread_t tcpThread;
    bool firstNode;
    NetUtils *net;
    UdpCommunication * udpCommunication;
public:
    static NodeInfo * nodeInfo;
    static const unsigned port = 8888;
    static const unsigned joinNetworkPort = 8889;
    static const unsigned maxTimeToJoinP2P = 2;


    NetMainThread() : broadcastAddress(NetUtils::getBroadcastAddress()), commonSocketFd(0), tcpThread(0), firstNode(false) {net = new NetUtils();
    udpCommunication = new UdpCommunication();}
    virtual ~NetMainThread() { delete nodeInfo; }

    static NodeInfo * getNodeInfo(void);
    void execute(void);
    bool reqSeparateThread(void) {return true;}
    int init(void);
    void buildNetwork(void);


    void receiveNetworkMessages(void);
    void joinNetwork(InfoMessage * req);
};


#endif //TIN_NETMAINTHREAD_H
