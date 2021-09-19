PImage img;
PGraphics pg;
PImage bg;


void setup() {
  size(800, 800);
  img = loadImage("File3.jpg");
  img.resize(800, 800);
  bg = loadImage("File15.jpg");
  bg.resize(width, height);
}

void draw() {
  image( img, 0, 0 );
  pg = createGraphics( width, height);
  pg.beginDraw();
  pg.background(0);
  pg.noStroke();
  float x = 0;
  for (x = 0; x < 19; x++) {
    pg.triangle(random(width), random(height), random(width), random(height), random(height), random(width));
  }
  pg.endDraw();
  img.mask( pg.get() ); // This is the magic.
  background(bg);
  image( img, 0, 0 );
  noLoop();
}
