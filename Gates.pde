class xor {
  boolean in1;
  boolean in2;
  boolean out1;
  float x;
  float y;
  xor(float posX, float posY) {
    x = posX;
    y = posY;
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
  float x;
  float y;
  and(float posX, float posY) {
    x = posX;
    y = posY;
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
class and3 {
  boolean in1;
  boolean in2;
  boolean in3;
  boolean out1;
  float x;
  float y;
  and3(float posX, float posY) {
    x = posX;
    y = posY;
    in1 = false;
    in2 = false;
    out1 = false;
  }
  void calc() {
    if (in1 && in2 && in3) {
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
  float x;
  float y;
  or(float posX, float posY, boolean r) {
    x = posX;
    y = posY;
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
