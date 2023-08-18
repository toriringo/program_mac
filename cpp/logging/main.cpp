#include "log.h"

int main()
{
    log_msg(WARN_LEVEL, "警告ですよー");
    log_msg(DEBUG_LEVEL, "デバッグレベルエラーですよ〜");
    log_msg(FATAL_LEVEL, "ファータルなエラーですね");

    return 0;
}
