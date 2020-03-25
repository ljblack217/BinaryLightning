float sizeX = 1280;
float sizeY = 720;
int bitSize = 16;
adder[] adders;
flipFlop[] flipFlops;
boolean[] inNum;
boolean[] outNum;

void setup() {
  inNum = new boolean[bitSize];
  outNum = new boolean[bitSize];
  background(0);
  size(1280, 720);
  frameRate(50);
  adders = new adder[bitSize];
  flipFlops = new flipFlop[bitSize];
  for (int i = 0; i < bitSize && i < 8; i++) { 
    adders[i] = new adder(256, (sizeY/(bitSize+2))*i);
    flipFlops[i] = new flipFlop(768, (sizeY/(bitSize+2))*i);
  }
  if (bitSize>8) {
    for (int i = 8; i < bitSize; i++) {
      adders[i] = new adder(512, (sizeY/(bitSize+2))*i);
      flipFlops[i] = new flipFlop(1024, (sizeY/(bitSize+2))*i);
    }
  }
}

void draw() {
  //out
  for (int i = 0, i < bitSize; i++) {
  
  
  }
}


class point {
  float x;
  float y;
}
