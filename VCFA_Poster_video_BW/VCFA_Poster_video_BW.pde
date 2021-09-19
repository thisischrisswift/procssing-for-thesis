float gridNumber = 9;
//float H = random(0, 100);
//float S = random(90, 100);
//float B = 80;

void setup() {
  size(900, 1300, P3D);
  rectMode(CENTER);
  textMode(SHAPE);
  //frameRate(4);
}

void draw() {
  background(#010203);

  noStroke();
  grid();
  getImages();
  images3D();


  for (float z = 0; z < random(8); z ++) {
    manyImages();
  }
  textFrame();
  //noLoop();
  saveFrame("VERMONT poster 3-######.png");
}
