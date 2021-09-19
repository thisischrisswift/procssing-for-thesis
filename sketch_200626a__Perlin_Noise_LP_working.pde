import processing.pdf.*;

float inc = 0.01;
float start = 0;

void setup(){
  size(1000, 1000);
  background(255);
  noCursor();
  beginRecord(PDF, "perlin noise testing.pdf");

}

void draw(){
  noFill();
  beginShape();
  float xOff1 = start;
  float yOff = start;
  float xOff2 = 10000;
  for (float x = 0; x < width; x++) {
    float y = noise(xOff1, yOff) * height;
    vertex(x, y);
    xOff1 += inc;
  }
  endShape();
  
  start += inc;
  float stW = noise(xOff1);
  strokeWeight(stW * 2);
  float alf = stW*100;
  stroke(20, alf);
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}

void mouseReleased() {
  background(255);
}
