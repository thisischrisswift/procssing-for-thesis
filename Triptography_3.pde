PImage webImg1;
PImage webImg2;
PImage webImg3;

//PImage img;
//PImage img2;
//PImage img3;
float offset;
float offset2;

void setup() {
  size(1296, 1944);
  String url1 = "https://picsum.photos/1269/1944";
  String url2 = "https://picsum.photos/1269/1944";
  String url3 = "https://picsum.photos/1269/1944";
  webImg1 = loadImage(url1, "png");
  webImg2 = loadImage(url2, "png");
  webImg3 = loadImage(url3, "png");
  //img = loadImage("File25.jpg"); 
  //img2 = loadImage("File2.jpg");
  //img3 = loadImage("File13.jpg");
}

void draw() {
  //image(webImg1, 0, 0);  // Display at full opacity
  //offset = random(-width, width);
  //tint(255, 150);  // Display at half opacity
  //image(webImg2, offset, 0);
  //offset2 = random(-width, width);
  //tint(255, 150);  // Display at half opacity
  //image(webImg3, offset2, 0);
  //noLoop();
}

void mousePressed(){
 image(webImg1, 0, 0);  // Display at full opacity
  offset = random(-width, width);
  tint(255, 150);  // Display at half opacity
  image(webImg2, offset, 0);
  offset2 = random(-width, width);
  tint(255, 150);  // Display at half opacity
  image(webImg3, offset2, 0);
  //noLoop();
}

//save function
int value = 0;
void keyPressed() {
  if (value == 0) {
    saveFrame("triptography-######.tiff");
  }
}
