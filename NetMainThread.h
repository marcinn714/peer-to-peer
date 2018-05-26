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

class NetMainThread: public Command
{
private:
    std::string broadcastAddress;
    int commonSocketFd;
    struct sockaddr_in commonSocketAddrIn;
    pthread_t tcpThread;
    bool firstNode;
    NetUtils *net;
public:
    static NodeInfo * nodeInfo;
    static const unsigned port = 8888;
    static const unsigned joinNetworkPort = 8889;
    static const unsigned maxTimeToJoinP2P = 2;


    NetMainThread() : broadcastAddress(NetUtils::getBroadcastAddress()), commonSocketFd(0), tcpThread(0), firstNode(false) {net = new NetUtils();}
    virtual ~NetMainThread() { delete nodeInfo; }

    static NodeInfo * getNodeInfo(void);
    void die(std::string s);
    void execute(void);
    bool reqSeparateThread(void) {return true;}
    int init(void);
    void buildNetwork(void);
    void setAndSendInfoMsgUDP(InfoMessage * msg, unsigned _port);
    void setInfoMsgUDP(unsigned timeout, unsigned _port);
    ssize_t setAndReceiveInfoMsgUDP(unsigned timeout, InfoMessage * msg, unsigned _port);


    void receiveNetworkMessages(void);
    void joinNetwork(InfoMessage * req);



};


#endif //TIN_NETMAINTHREAD_H
