import processing.pdf.*;


void setup() {
  size(648, 972);
  background(0);
  beginRecord(PDF, "RandoDraw###.pdf");
  frameRate(10);
  
}

void draw() {
  noFill();
  stroke(220, 60);
  strokeWeight(0.66);
  quad(mouseX, mouseY, random(height), random(width), random(height), random(width), random(height), random(width));
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
  }
}
