class xor {
  boolean in1;
  boolean in2;
  boolean out1;
  float posX;
  float posY;
  xor(float x, float y) {
    posX = x;
    posY = y;
    in1 = false;
    in2 = false;
    out1 = false;
  }
  void calc() {
    if (in1 != in2) {
      out1 = true;
    } else {
      out1 = false;
    }
  }
}
class and {
  boolean in1;
  boolean in2;
  boolean out1;
  float posX;
  float posY;
  and(float x, float y) {
    posX = x;
    posY = y;
    in1 = false;
    in2 = false;
    out1 = false;
  }
  void calc() {
    if (in1 && in2) {
      out1 = true;
    } else {
      out1 = false;
    }
  }
}
class or {
  boolean in1;
  boolean in2;
  boolean out1;
  boolean reverseOut;
  float posX;
  float posY;
  or(float x, float y, boolean r) {
    posX = x;
    posY = y;
    reverseOut = r;
    in1 = false;
    in2 = false;
    out1 = false;
  }
  void calc() {
    if (in1 || in2) {
      out1 = true;
    } else {
      out1 = false;
    }
  }
}
