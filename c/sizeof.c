#include <stdio.h>
#include <string.h>

int main()
{
	char *c = {"aiu"};
	char arr[] = {"aiu"};

	printf("%lu\n", sizeof(c));    // 8 ポインタサイズ
	printf("%lu\n", sizeof(arr));  // 4 aiu\0

	return 0;
}
