//
// Created by marcin on 18.05.18.
//

#include "SendFileTcp.h"
#include "NetMainThread.h"

#include <string>

void SendFileTcp::execute(void) {
    std::string fileStr;
    std::string fileName;
    std::string f(msg.hash);
    char c = 0;
    fileName.copy(msg.hash, f.find_first_of(c));
    std::ifstream file(msg.hash, std::ios::in | std::ios::binary);
    if (!file) {
        std::cout << "Couldn't open file" << std::endl;
        return;
    }
    file.seekg(0, std::ios::end); //how big is file
    fileStr.reserve(file.tellg());
    file.seekg(0, std::ios::beg);

    fileStr.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>()); //copy file to string



    NetUtils::sendFileTCP(msg.hash, &fileStr, ip);
}