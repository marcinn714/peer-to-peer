//
// Created by marcin on 16.05.18.
//

#ifndef ADDNODE_H_
#define ADDNODE_H_

#include "Command.h"
#include <string>
#include "netCommunication/NetUtils.h"

class AddFile: public Command
{
public:
    AddFile(std::string _param) : param(_param) {}
    virtual ~AddFile() {}

    void execute(void);
    bool reqSeparateThread(void) {return true;}
private:
    std::string param;
};

#endif /* ADDNODE_H_ */
