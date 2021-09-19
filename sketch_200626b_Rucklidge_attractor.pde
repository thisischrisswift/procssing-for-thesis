
import peasy.*;

float x = 1;
float y = 0;
float z = 0;

float k = 2;
float a = 6.7;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup(){
  size(800, 800, P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}



void draw (){
  background(0);
  float dt = 0.05;
  float dx = (-k * x + a * y - y * z) * dt;
  float dy = (x) * dt;
  float dz = (-z + (y * y)) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;

  points.add(new PVector(x, y, z));
  scale(8);
  noFill();

  beginShape();
  for (PVector v : points) {
    stroke(225, 120);
    strokeWeight(0.25);
    vertex(v.x, v.y, v.z);
  }
  endShape();
  saveFrame("output/attractor_####.png");
}
