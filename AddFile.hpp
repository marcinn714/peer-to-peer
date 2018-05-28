//
// Created by marcin on 16.05.18.
//

#ifndef ADDNODE_H_
#define ADDNODE_H_

#include "Command.hpp"
#include <string>
#include "netCommunication/NetUtils.h"
#include "NetMainThread.h"

class AddFile: public Command
{
public:
    AddFile(std::string _param) : param(_param) {}
    virtual ~AddFile() {}

    void execute(void) {
        std::ifstream file(param.c_str());
        if (!file.is_open()) {
            std::cout << "There is no such file in working directory" << std::endl;
            return;
        }
        NodeInfo* nodeInfo = NetMainThread::getNodeInfo();
        if (nodeInfo != nullptr) {
            nodeInfo->addLocalFile(param);
        }
        else {
            std::cout << "Couldn't add new file" << std::endl;
            return;
        }
        std::cout << "Successfully added file" << std::endl;
    }

    bool reqSeparateThread(void) {return true;}
private:
    std::string param;
};

#endif /* ADDNODE_H_ */
