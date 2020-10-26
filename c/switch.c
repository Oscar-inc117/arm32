/*
*	2.4 World cup, olympic games
*	Author: Oscar Dominguez
*	Date: 10/23/2020
*/

#include <stdio.h>

int main(){
    for (int i = 1950; i<2015; i++){
		switch(i&3){
			case 0: printf("En %d hubo olimpiadas\n", i);
					break;
			case 2: printf("En %d hubo mundial de futbol\n", i);
					break;
			default: printf("En %d no paso nada\n", i);
		}
    }
    return 0;
}
