#include "log.h"
#include "mytime.h"
#include <iostream>
#include <fstream>

void log_msg (int log_level, std::string msg)
{
    if(log_level <= LOG_OUTPUT_LEVEL){

        std::string head = "[     ]";

        switch(log_level){
            case FATAL_LEVEL:
                head = "[fatal]";
                break;
            case ERROR_LEVEL:
                head = "[error]";
                break;
            case WARN_LEVEL:
                head = "[warn ]";
                break;
            case INFO_LEVEL:
                head = "[info ]";
                break;
            case DEBUG_LEVEL:
                head = "[debug]";
                break;
            default:
                head = "[     ]";
                break;
        }

        std::cout << head + " " + get_current_time() + " " + msg << std::endl;

		//ファイルに書き出し
		std::ofstream ofile("./log.txt", std::ios::app);
		ofile << head + " " + get_current_time() + " " + msg << std::endl;
		ofile.close();
	}
}
