#include <stdio.h>

int main(){
   for (int i = 0; i < 10; i++){
	if(i&1)
	    printf("%d es impar\n", i);
	else
	    printf("%d es par\n", i);
    }
    return 0;
}
