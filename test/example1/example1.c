/* Copyright (c) 2008, Jacob Burnim (jburnim@cs.berkeley.edu)
 *
 * This file is part of CREST, which is distributed under the revised
 * BSD license.  A copy of this license can be found in the file LICENSE.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See LICENSE
 * for details.
 */

#include <crest.h>
#include <stdio.h>

int main(void) {
  int a = 0 , b = 0, c = 0 ;

  CREST_int(a) ; fprintf(stderr, "%d\n", a) ;
  CREST_int(b) ; fprintf(stderr, "%d\n", b) ;

  c = 3 * a + b ;

  if (a < 0) {
	printf("@L0") ;
  }
  else {
	  if (b > 8) {
		  printf("@L1") ;
	  } 
	  else {
		  if (c > 0) {
			  printf("@L2") ;
		  }
		  else {			  
			  if (a + b < 10) {
				  printf("@L3") ;
			  }
			  else {
				  printf("@L4") ;
			  }
		  }
	  }
  }
  printf("\n") ;
  return 0;
}
