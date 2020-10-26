/*
*	2.1 First 50 even numbers
*	Author: Oscar Dominguez
*	Date: 10/23/2020
*/

#include <stdio.h>

int main(){
    for (int i = 100; i >= 2; i--){
        if (i % 2 == 0){
            printf("%d\n", i);
        }
    }
    return 0;
}