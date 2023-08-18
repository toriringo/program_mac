#include <iostream>
#include <vector>

int main()
{
	std::cout << "hello" << std::endl;
	std::vector<int> v;

	v.push_back(20);
	v.push_back(22);
	v.push_back(24);

	for(auto a : v){
		std::cout << a << std::endl;
	}

	return 0;
}

