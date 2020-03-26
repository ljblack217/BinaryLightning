class adder {
  boolean in1;
  boolean in2;
  boolean cIn;
  boolean cOut;
  boolean out;
  float posX;
  float posY;
  xor gXor1;
  xor gXor2;
  and gAnd1;
  and gAnd2;
  or gOr1;
  adder(float x, float y) {
    in1 = false;
    in2 = false;
    cIn = false;
    cOut = false;
    out = false;
    posX = x;
    posY = y;
    gXor1 = new xor(posX-78, posY-31);
    gXor2 = new xor(posX+16, posY-78);
    gAnd1 = new and(posX-78, posY+78);
    gAnd2 = new and(posX+16, posY+16);
    gOr1 = new or(posX+78, posY+78, false);
  }
  void drawAdder(float in1X, float in1Y, int bit) {
      //in 1 to xor1 and and1
      
      //flip flop out to xor1 and and1
      
      //cIn to xor1 and and2
      
      //xor1 to zor2 and and2
      
      //and1 to or1
      
      //and2 to or1
      
      //or one to next adder
      
      //xor 1 to flip flop
      
  }
}
