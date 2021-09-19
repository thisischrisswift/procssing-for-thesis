import processing.pdf.*;

void setup() {
  size(648, 972);
  background(20);
  beginRecord(PDF, "rotate circle_###.pdf");
}

void draw(){
  stroke(220, 80);
  strokeWeight(mouseX/100);
  noFill();
  translate(width/2, height/2);
  rotate(mouseY/20);
  rect(40, 30, 160, 20);
}

void mousePressed(){
    background(20);
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
  }
}
