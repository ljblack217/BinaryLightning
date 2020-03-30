class flipFlop {
  boolean in1;
  boolean out; 

  and3 gAnd1;
  and3 gAnd2;
  or gOr1;
  or gOr2;
  float posX;
  float posY;
  flipFlop(float x, float y) {
    in1 = false;
    out = false;
    posX = x;
    posY = y;
    gAnd1 = new and3(posX-47, posY-47);
    gAnd2 = new and3(posX-47, posY+47);
    gOr1 = new or(posX+62, posY-47, true);
    gOr2 = new or(posX+62, posY+47, true);
  }
  
  void drawFlipFlop(int bit, float outBitX, float outBitY){
    //in1 to and1 and and2
    if (in1 == true){
      line(adders[bit].gXor2.x, adders[bit].gXor2.y, gAnd1.x,gAnd1.y);
      line(adders[bit].gXor2.x, adders[bit].gXor2.y, gAnd2.x, gAnd2.y);
    }
    
    //clk to and 1 and and2
    if (clock){
      line(clockX,clockY, gAnd1.x, gAnd1.y);
      line(clockX,clockY, gAnd2.x, gAnd2.y);
    }
    
    //and1 to or1
    if(gAnd1.out1 == true){
      line(gAnd1.x, gAnd1.y, gOr1.x, gOr1.y);
    }
    //and2 to or2
    if (gAnd2.out1 == true){
      line(gAnd2.x, gAnd2.y, gOr2.x, gOr2.y);
    }
    //or1 to out and or2 and and1 and adder.xor 1 and Out
    if (gOr1.out1 == true){
      line(gOr1.x, gOr1.y, gOr2.x, gOr2.y);
      line(gOr1.x, gOr1.y, gAnd1.x, gAnd1.y);
      line(gOr1.x, gOr1.y, adders[bit].gXor1.x, adders[bit].gXor1.y);
      line(gOr1.x, gOr1.y, outBitX, outBitY);
    }
    // or2 to or1 and and2
    if (gOr2.out1 == true){
      line(gOr2.x, gOr2.y, gOr1.x, gOr2.y);
      line(gOr2.x, gOr2.y, gAnd2.x, gAnd2.y);
    }
  }
  void calc(int bit){
    //outcalcs
    gAnd1.calc();
    gAnd2.calc();
    gOr1.calc();
    out = gOr1.out1;
    gOr2.calc();
    
    //in1 to and1 and and2
    gAnd1.in1 = in1;
    gAnd2.in1 = in1;
    //clk to and 1 and and2
    gAnd1.in2 = clock;
    gAnd2.in2 = clock;
    //and1 to or1
    gOr1.in1 = gAnd1.out1;
    //and2 to or2
    gOr2.in1 = gAnd1.out1;
    //or1 to out and or2 and and1 and adder.xor 1 and Out
    out = gOr1.out1;
    gOr2.in2 = gOr1.out1;
    gAnd1.in3 = gOr1.out1;
    // or2 to or1 and and2
    gOr1.in2 = gOr2.out1;
    gAnd2.in3 = gOr2.out1;
  }
}
