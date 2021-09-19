
import processing.pdf.*;

float xOff1 = 0;
float xOff2 = 10000;


void setup() {
  size(648, 972);
  background(20);
  beginRecord(PDF, "noise tool_###.pdf");
}

void draw() {
  noFill();
  stroke(220, 60);
  strokeWeight(0.66);
  if (mousePressed) {
      float quadx1 = map(noise(xOff1), 0, 1, 0, width);
      float quady1 = map(noise(xOff2), 0, 1, 0, height);
      float quadx2 = map(noise(xOff1), 0, 1, 0, width);
      float quady2 = map(noise(xOff2), 0, 1, 0, height);
      float quadx3 = map(noise(xOff1), 0, 1, 0, width);
      float quady3 = map(noise(xOff2), 0, 1, 0, height);
      quad(quadx1, quady1, quadx2, quady2, quadx3, quady3, mouseX, mouseY);

      xOff1 += 0.01;
      xOff2 += 0.01;
    }
  }

void keyPressed() {
  if (key == 'q') {
    endRecord();
  }
}
