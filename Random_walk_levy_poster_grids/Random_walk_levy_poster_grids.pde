PVector pos;
PVector prev;
float gridNum = 12;

void setup() {
  //size(500, 500);
  //size(648, 972);
  size(1296, 1944);
  background(#002fa7);
  pos = new PVector(width/2, height/2);
  prev = pos.copy();
  println(pos.x, pos.y);
  poster();
}

void draw() {
  stroke(255);
  strokeWeight(3);
  line(pos.x, pos.y, prev.x, prev.y);
  prev.set(pos);

  PVector step = PVector.random2D();

  float r = random(100);
  if (r < 1) {
    step.mult(random(width/(gridNum/2), height/(gridNum/2)));
    strokeWeight(0.5);
    line(pos.x, pos.y, pos.x, height);
    line(pos.x, pos.y, width, pos.y);
    line(pos.x, pos.y, pos.x, -height);
    line(pos.x, pos.y, -width, pos.y);
    textFont(font, 16);
    textLeading(16);
    text(text, pos.x, pos.y);
  } else {
    step.setMag(2);
  }

  pos.add(step);
}

//save function
int value = 0;
void keyPressed() {
  if (value == 0) {
    saveFrame("Levy walker poster-######.tiff");
  }
}
