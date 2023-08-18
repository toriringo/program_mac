#include <iostream>

//const int* func(int* pi)
int* func(int* pi)
{
	return pi;
}

int main()
{
	int i = 10;
	int* pi = &i;

	pi = func(pi);

	*pi = 5;

	return 0;
}

