//
// Created by marcin on 18.05.18.
//

#include "RemoveFile.h"
#include "NetMainThread.h"

void RemoveFile::execute()
{
    if (NetMainThread::getNodeInfo() == nullptr)
        return;

    NetMainThread::getNodeInfo();
}
