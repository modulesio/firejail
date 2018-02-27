#include <stddef.h>

char localStrcatBuffer[1024];
char *localStrcat(const char *left, const char *right) {
  size_t leftLength = strlen(left);
  memcpy(localStrcatBuffer, left, leftLength);
  size_t rightLength = strlen(right);
  memcpy(localStrcatBuffer + leftLength, right, rightLength);
  localStrcatBuffer[leftLength + rightLength] = 0;
  return localStrcatBuffer;
}
