#include "fcgi_stdio.h"
#include <stdio.h> 
#include <stdlib.h> 

int main(void) {
   while (FCGI_Accept() >= 0) {
    printf("Content-type: text/html\r\n\r\n");
    printf("Hello World!\n");
  }
  return 0;
}