float sizeX = 1280;
float sizeY = 720;
int bitSize = 16;
adder[] adders;
flipFlop[] flipFlops;
String sInNum = "";
int iInNum;
boolean[] bInNum;
boolean[] bOutNum;
float clockX;
float clockY;
boolean clock;

void setup() {
  bInNum = new boolean[bitSize];
  bOutNum = new boolean[bitSize];
  background(0);
  size(1280, 720);
  frameRate(25);
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
  //drawing visuals
  for (int i = 0; i < bitSize; i++) {
    adders[i].drawAdder(0, (sizeY/3) + (i * (sizeY/3)), i);
    flipFlops[i].drawFlipFlop(i, sizeX, (sizeY/3) + (i * (sizeY/3)));
  }
  //calculations
  for (int i = 0; i < bitSize; i++) {
    flipFlops[i].calc(i);
    adders[i].calc(i, bInNum[i]);
  }
}

void keyPressed() {
  if (key == '1'||key =='2' ||key =='3' ||key == '4'
    ||key == '5'||key =='6' ||key =='7' ||key == '8' ||key == '9') {
    sInNum = sInNum + char(key);
    println(sInNum);
  } else if (key == '+') {
    iInNum = int(sInNum);
    sInNum = "";
    bInNum = numTo16(iInNum);
  }
}
boolean[] numTo16(int in) {
  boolean[] processed = new boolean[16];
  int mid
  while(in>
  return processed;
}
