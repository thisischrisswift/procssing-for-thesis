import processing.pdf.*;


void setup() {
  size(648, 972);
  beginRecord(PDF, "Lights_###.pdf");
  background(0);
}

void draw() {
  stroke(255, 80);
  strokeWeight(0.25);
  line(100, 100, random(width), random(height));
  line( width-100, 100, random(width), random(height));
}
void keyPressed() {
  if (key == 'q') {
    endRecord();
  }
}
