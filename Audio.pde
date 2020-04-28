void audioSetup() {
  ac = new AudioContext();
  peaks = new SamplePlayer[s];
  g = new Gain(ac, 1,0.8);
  for (int n = 0; n<s; n++) {
    peaks[n] = new SamplePlayer(ac, SampleManager.sample(dataPath("")+"/Peak"+(n+1)+".wav"));
    peaks[n].setKillOnEnd(false);
    peaks[n].setToEnd();
    g.addInput(peaks[n]);
    
}
  ac.out.addInput(g);
  //buzz = new SoundFile(this, "ON.wav");
}

//void buzzCheck(boolean clk){
//  if(clk == true && buzz.isPlaying()==false){
//    buzz.loop(); 
//    //println("ye?");
//  }else if(clk == false){
//    buzz.stop();
//  }
//}

void blip(){
  println("ye?");
  //int i = int(random(s));
  int i = 1;
  peaks[i].setToLoopStart();
  peaks[i].start();
}
