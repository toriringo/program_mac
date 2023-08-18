#include "mytime.h"

// 現在の時刻を取得する
// 以下のURLに記述された処理を改修した
// https://stackoverflow.com/questions/997946/how-to-get-current-time-and-date-in-c
std::string get_current_time()
{
    auto start = std::chrono::system_clock::now();
    // Some computation here
    auto end = std::chrono::system_clock::now();

    std::chrono::duration<double> elapsed_seconds = end-start;
    std::time_t end_time = std::chrono::system_clock::to_time_t(end);

    // char*をstringにキャスト
    std::string current_time = std::ctime(&end_time);
    // 末尾の改行コードを削除する
    deleteNl(current_time);

    return current_time;
}