//
// Created by marcin on 15.05.18.
//

#ifndef TIN_NETUTILS_H
#define TIN_NETUTILS_H

#include <string>
#include "../MessageFrames.h"

class NetUtils {
public:
    static std::string getSelfIpAddress(void);
    static std::string getBroadcastAddress(void);
    static struct in_addr getMyIP();
    static bool sendInfoMsgUDP(InfoMessage * msg, struct in_addr nodeAddr, unsigned port);
    static bool sendInfoMsgUDP(InfoMessage * msg);
    static bool sendFileTCP(std::string hash, std::string* stringFile, struct in_addr ip);
    static struct in_addr stringIpToNetIp(std::string ipStr);
    static std::string netIpToStringIp(struct in_addr ipNet);
    static bool sendBroadcastInfoMsgUDP(InfoMessage * msg,std::string broadcastAddress, unsigned port);
    ssize_t receiveInfoMsgUDP(InfoMessage * msg, unsigned port, struct sockaddr_in * commonSocketAddrIn, unsigned timeout = 0);

};


#endif //TIN_NETUTILS_H
