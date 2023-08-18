#include <iostream>
#include <vector>
#include <string>
#include <numeric>

void string_vector()
{
	std::vector<std::string> str_vec;

	// 値を設定
	str_vec.push_back("hello");
	str_vec.push_back("world");
	str_vec.push_back("konnitiha");
	str_vec.push_back("sekai");


	// forとイテレータ
	for(const auto& s : str_vec){
		std::cout << s << std::endl;
	}
	std::cout << std::endl;


	// forとsize()
	for(int i = 0; i < str_vec.size(); ++i){
		std::cout << str_vec[i] << std::endl;
	}
	std::cout << std::endl;


	// 挿入
	str_vec.insert(str_vec.begin() + 1, "aaa");


	// fotとbegin()
	for(auto itr = str_vec.begin(); itr != str_vec.end(); ++itr){
		std::cout << *itr << std::endl;
	}
	std::cout << std::endl;


	// begin()での参照
	std::cout << *str_vec.begin() << std::endl;
	std::cout << std::endl;


	// ソート
	std::sort(str_vec.begin(), str_vec.end());
	for(const auto& s : str_vec){
		std::cout << s << std::endl;
	}
	std::cout << std::endl;

	// ソート
	std::reverse(str_vec.begin(), str_vec.end());
	for(const auto& s : str_vec){
		std::cout << s << std::endl;
	}
	std::cout << std::endl;
}

void int_vector()
{
	std::vector<int> i_vec;

	i_vec.push_back(30);
	i_vec.push_back(4);
	i_vec.push_back(99);
	i_vec.push_back(4);

	// 合計
	std::cout << std::accumulate(i_vec.begin(), i_vec.end(), 0) << std::endl;

	// 値の数
	std::cout << std::count(i_vec.begin(), i_vec.end(), 4) << std::endl;
}

int main()
{
	string_vector();
	int_vector();

	return 0;
}

