class flipFlop {
  boolean in1;
  boolean clk;
  boolean out; 

  and gAnd1;
  and gAnd2;
  or gOr1;
  or gOr2;
  float posX;
  float posY;
  flipFlop(float x, float y) {
    in1 = false;
    clk = false;
    out = false;
    posX = x;
    posY = y;
    gAnd1 = new and(posX-47, posY-47);
    gAnd2 = new and(posX-47, posY+47);
    gOr1 = new or(posX+62, posY-47, true);
    gOr2 = new or(posX+62, posY+47, true);
  }
  
  void drawFlipFlop(){
    //in1 to and1 and and2
    
    //clk to and 1 and and2
    
    //and1 to or1
    
    //and2 to or2
    
    //or1 to out and or2 and and1
    
    // or2 to or1 and and2
  }
}
