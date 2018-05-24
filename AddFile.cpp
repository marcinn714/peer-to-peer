//
// Created by marcin on 16.05.18.
//

#include "AddFile.h"
#include "NetMainThread.h"

using namespace std;

void AddFile::execute(void)
{
    NodeInfo* nodeInfo = NetMainThread::getNodeInfo();
    if (nodeInfo != nullptr) {
        nodeInfo->addLocalFile(param);
    }
    else {
        cout << "Couldn't add new file" << endl;
        return;
    }
    cout << "Successfully added file" << endl;
}
