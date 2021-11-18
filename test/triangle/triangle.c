#include <stdio.h>
#include <stdlib.h>

int
main() 
{
	int a = 0, b = 0, c =0 ;
	int match = 0 ;

	char * category[] = { "Equilateral", "Isosceles", "Not a triangle", "Scalene" } ;

	scanf("%d", &a) ;
	scanf("%d", &b) ;
	scanf("%d", &c) ;

	if (a <= 0 || b<= 0 || c<= 0) {
		printf("@L0\n") ;
		exit(0);  
	}

	int result = -1 ;

	if(a == b) 
		match = match + 1 ;
	if(a == c) 
		match = match + 2 ;
	if(b == c) 
		match = match + 3 ;
	if(match == 0) {
		if(a + b <= c) {
			result = 2 ;
			printf("@L1\n") ;
		}
		else if (b + c <= a) {
			result = 2 ;
			printf("@L2\n") ;
		}
		else if (a + c <= b) {
			result = 2 ;
			printf("@L3\n") ;
		}
		else {
			result = 3 ;
			printf("@L4\n") ;
		}
	} 
	else {
		if(match == 1) {
			if(a + b <= c) {
				result = 2 ;
				printf("@L5\n") ;
			}
			else {
				result = 1 ;
				printf("@L6\n") ;
			}
		} 
		else {
			if (match == 2) {
				if (a + c <= b) {
					result = 2 ;
					printf("L7\n") ;
				}
				else {
					result = 1 ;
					printf("L8\n") ;
            	}
			} 
			else {
				if (match == 3) {
					if(b + c <= a) {
						result = 2 ;
						printf("@L9\n") ;
					}
					else {
						result = 1 ;
						printf("@L10\n") ;
					}
				} 
				else {
					result = 0;
					printf("@L11\n") ;
				}
			}
		}
	}
	printf("%s\n",category[result]);
}
