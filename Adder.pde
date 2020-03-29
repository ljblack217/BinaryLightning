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
    stroke(255);
    strokeWeight(3);
      //in 1 to xor1 and and1
      if(inNum[bit]== true){
        line(in1X, in1Y, gXor1.x,gXor1.y);
        line(in1X, in1Y, gAnd1.x, gAnd1.y);
      }
      //flip flop out to xor1 and and1
      if(flipFlops[bit].out == true){
        line(flipFlops[bit].gOr1.x,flipFlops[bit].gOr1.y, gXor1.x, gXor1.y);
        line(flipFlops[bit].gOr1.x,flipFlops[bit].gOr1.y, gAnd1.x, gAnd1.y);
      }
      //cIn to xor1 and and2
      if(cIn == true){
        line(adders[bit-1].gOr1.x,adders[bit-1].gOr1.y, gXor1.x, gXor1.y);
        line(adders[bit-1].gOr1.x,adders[bit-1].gOr1.y, gAnd2.x, gAnd2.y);
      }
      
      //xor1 to zor2 and and2
      if (gXor1.out1 == true){
        line(gXor1.x, gXor1.y, gXor2.x,gXor2.y);
        line(gXor1.x, gXor1.y, gAnd2.x,gAnd2.y);
      }
      
      //and1 to or1
      if(gAnd1.out1 == true){
        line(gAnd1.x, gAnd1.y, gOr1.x, gOr1.y); 
      }
      //and2 to or1
      if(gAnd2.out1 == true){
        line(gAnd2.x, gAnd2.y, gOr1.x, gOr1.y);
      }
      
  }
}
