PImage image2;

void images() {
  imageMode(CENTER);
  push();
  translate(width/2, height/2);
  rotate(PI/random(-60, 60));
  image2 = loadImage("jordans.png");
  int halfH = height/2;
  image2.resize(halfH, 0);
  image(image2, 0, 0);
  pop();
}
