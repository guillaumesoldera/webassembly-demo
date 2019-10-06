int maxValues(int *buf, int bufferSize) {
  int max = -1.0;
  for (int i=0; i<bufferSize; i++) {
    int current = buf[i];
    if (current > max) {
      max = current;
    }
  }
  return max;
}