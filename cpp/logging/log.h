#ifndef LOG_H
#define LOG_H

#include <string>

void log_msg(int, std::string);

static const int FATAL_LEVEL = 0;
static const int ERROR_LEVEL = 1;
static const int WARN_LEVEL  = 2;
static const int INFO_LEVEL  = 3;
static const int DEBUG_LEVEL = 4;

static const int LOG_OUTPUT_LEVEL = 4;

#endif // LOG_H
