// https://wasdk.github.io/WasmFiddle/
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

float maxValues(float *buf, int bufferSize) {
  float max = -1.0;
  for (int i=0; i<bufferSize; i++) {
    float current = buf[i];
    if (current > max) {
      max = current;
    }
  }
  return max;
}