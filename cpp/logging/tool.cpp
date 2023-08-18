#include "tool.h"

// 末尾の改行コードを削除する
// https://teratail.com/questions/34367
void deleteNl(std::string &targetStr)
{
    const char CR = '\r';
    const char LF = '\n';
    std::string destStr;
    for (std::string::const_iterator it = targetStr.begin();
            it != targetStr.end(); ++it) {
        if (*it != CR && *it != LF) {
            destStr += *it;
        }
    }
    targetStr = destStr;
}
