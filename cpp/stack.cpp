#include <iostream>

struct Point
{
	Point(int ii, int jj){
		i = ii;
		j = jj;
		std::cout << i << "," << j << std::endl;
	}

	int i;
	int j;

	static const Point p;
};

const Point Point::p = Point(4, 5);

int main()
{
	Point(1, 3);

	return 0;
}

