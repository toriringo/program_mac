#include <iostream>
#include "lib.h"

int main()
{
	// 他ファイルのグローバル変数にアクセス
	global_cat.i = 123;
	std::cout << global_cat.i << std::endl;

	// 他ファイルのstaticなグローバル変数にアクセス
	set_static_global_cat(987);
	std::cout << get_static_global_cat()->i << std::endl;

	return 0;
}

