#include <string.h>

extern void jsPrintString(const char *s, int len);

extern void logMethod(int elem);

int mult(int a, int b) {
  char* param1 = "Inside mult method";
  logMethod(a);
  logMethod(b);
  jsPrintString(param1, strlen(param1));
  return a * b;
}