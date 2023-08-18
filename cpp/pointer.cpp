#include <iostream>

void func1(int* pi)
{
	*pi = 5;
	std::cout << *pi << std::endl;
}

void func2(const int* pi)
{
	std::cout << *pi << std::endl;
}

int main()
{
	int i;
	int* pi;

	i = 10;
	pi = &i;

	func1(pi);
	func2(pi);

	std::cout << i << std::endl;

	return 0;
}

