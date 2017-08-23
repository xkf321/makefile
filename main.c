#include <stdio.h>
#include "add.h"
#include "sub.h"
int main(int argc, char** argv)
{
	int a,b;
	a= 1;
	b= 2;
	printf("a+b=%d\n",add(a,b));
	printf("b-a=%d\n",sub(b,a));
	return 0;
}
