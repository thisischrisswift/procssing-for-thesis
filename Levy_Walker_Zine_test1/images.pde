PImage webImg1;

void images() {
  int u1 = round(random(100, 1000));
  int u2 = round(random(100, 1000));

  String formatted = String.format("https://source.unsplash.com/%sx%s", u1, u2);
  //String formatted2 = String.format("https://picsum.photos/%s/%s", u1, u2);
  println(formatted);
  webImg1 = loadImage(formatted, "png");
  //webImg1.filter(GRAY);
  image(webImg1, pos.x, pos.y);
}
