//blobs by name here and Shiffman


void setup() {
  ////laptop
  //size(500, 800);
  //largescreen
  size(636, 900);
}

void draw() {
  float margin = width/10;
  background(#c8f3fe);
  noStroke();
  fill(#1ebefa);
  rect(margin, margin, width -(margin * 2), height - (margin * 2));
  topBlob();
  bottomBlob();
  images();
  frame();
  shapes();

  //noLoop();
  rec();
}
