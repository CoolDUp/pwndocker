#include "stdio.h"
#include "stdlib.h"
#include "string.h"
int main(int argc, const char **argv, const char **envp)
{
  int v4; 
  setvbuf(stdout, 0, 2, 0);
  setvbuf(_bss_start, 0, 1, 0);
  puts("RET2LIBC >_<");
  gets((char *)&v4);
  return 0;
}
