PImage webImage1;

void getImages() {
  int u1 = round(random(100, 1000));
  int u2 = round(random(100, 1000));

  //String formatted = String.format("https://source.unsplash.com/%sx%s", u1, u2);
  String formatted = String.format("https://source.unsplash.com/%sx%s", width-200, height-200);
  println(formatted);
  
  imageMode(CENTER);
  webImage1 = loadImage(formatted, "png");
  webImage1.filter(GRAY);
}
