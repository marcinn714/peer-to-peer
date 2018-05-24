//
// Created by marcin on 15.05.18.
//

#ifndef TIN_MESSAGEFRAMES_H
#define TIN_MESSAGEFRAMES_H


#include <cstdlib>
#include <string>

class InfoMessage {
public:
    InfoMessage(size_t opcode = 0);
    InfoMessage(size_t _opcode, std::string fileName);
    InfoMessage(size_t _opcode, size_t myId, std::string _hash);
    InfoMessage(size_t _opcode, size_t nodeCnt, size_t senderId);
    InfoMessage(const InfoMessage & other);
    void fillName();
    size_t opcode;
    size_t firstField;
    size_t secondField;
    size_t thirdField;
    char hash[33];
};



#endif //TIN_MESSAGEFRAMES_H
