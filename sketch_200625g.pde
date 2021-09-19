import processing.pdf.*;

float angle = 0;
float w = 60;
float h = 0;

void setup() {
  size(1200, 1200);
  background(255);
  beginRecord(PDF, "everything.pdf");
}


void draw() {
  noFill();
  float scalar = mouseX/60;
  strokeWeight(1/ scalar);
  stroke(20, 80);
  translate(mouseX, mouseY);
  scale(scalar);
  rotate(angle);
  angle += 0.1;
  rect(-15, -15, w, 60);
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}

void mousePressed(){
  background(255);
}
