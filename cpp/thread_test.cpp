#include <thread>
#include <iostream>

void func1(){
	for(int i = 0; i < 200; ++i){
		std::cout << "o";
	}
}

void func2(){
	for(int i = 0; i < 200; ++i){
		std::cout << "-";
	}
}

int main()
{
	std::thread th1(func1);
	std::thread th2(func2);

	th1.join();
	th2.join();

	std::cout << std::endl;

	return 0;
}

