import processing.pdf.*;


void setup() {
  size(648, 972);
  beginRecord(PDF, "RandoDraw###.pdf");
  background(0);
  frameRate(10);
}

void draw() {
  noFill();
  stroke(220, 20);
  strokeWeight(0.66);

  float a = 0.0;
  float inc = TWO_PI / 30.0;
  for (float i = 0; i <= 100; i += 1) {
    triangle( i * (width/80), ((height/2) + (sin(a) * 80)), random(width), random(height), random(width), random(height));
    a = a + inc;
  }
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
  }
}
