PImage webImage2;

void manyImages() {

  int u1 = round(random(width/gridNumber, height/gridNumber));
  int u2 = round(random(width/gridNumber, height/gridNumber));

  String formatted = String.format("https://source.unsplash.com/%sx%s", u1, u2);
  println(formatted);

  imageMode(CENTER);
  webImage2 = loadImage(formatted, "png");
  webImage2.filter(GRAY);
  push();
  //tint(H, S, B);
  //blendMode(MULTIPLY);
  //tint(H, S, B);
  //translate(width/2, height/2);
  rotateX(PI/random(-60, 60));
  rotateY(PI/random(-30, 30));
  image(webImage2, random(width), random(height));
  pop();
}
