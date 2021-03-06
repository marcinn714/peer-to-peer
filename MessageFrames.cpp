//
// Created by marcin on 15.05.18.
//

#include "MessageFrames.h"
#include <string.h>
#include <string>

InfoMessage::InfoMessage(size_t _opcode, std::string fileName)
{
    opcode = _opcode;
    strncpy(hash, fileName.c_str(), FILE_NAME_SIZE);
}

InfoMessage::InfoMessage(size_t _opcode) {
    opcode = _opcode;
    firstField = 0;
    secondField = 0;
    thirdField = 0;
}

InfoMessage::InfoMessage(size_t _opcode, size_t nodeId, std::string _hash) {
    opcode = _opcode;
    firstField = nodeId;
    secondField = 0;
    thirdField = 0;
    strncpy(hash, _hash.c_str(), FILE_NAME_SIZE);
}

InfoMessage::InfoMessage(size_t _opcode, size_t nodeCnt, size_t senderId) {
    opcode = _opcode;
    firstField = nodeCnt;
    secondField = senderId;
    thirdField = 0;
}

InfoMessage::InfoMessage(const InfoMessage & other)
{
    opcode = other.opcode;
    firstField = other.firstField;
    secondField = other.secondField;
    thirdField = other.thirdField;
    strncpy(hash, other.hash, FILE_NAME_SIZE);
}
