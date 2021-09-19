void frame() {
  float color1 = #f1f2f2;
  String str = "impossible art club";
  PFont font;
  float deg = 90;
  float rad = radians(deg);

  float deg2 = 270;
  float rad2 = radians(deg2);

  float deg3 = -180;
  float rad3 = radians(deg3);
  
  str = str.toUpperCase();
  font = createFont("DomaineDisplayCondensedTest-Regular.otf", 30);
  textFont(font);
  // calculate minimum size to fit width
  float minSizeW = 30/textWidth(str) *width;
  float minSizeH = 30/textWidth(str) *height;
  fill(color1);
  
  //top
  textSize(minSizeW);
  text(str, 0, 0+minSizeW);

  //left
  push();
  rotate(rad);
  textSize(minSizeH);
  fill(#f4233b);
  text(str, 0, -10);
  pop();

  //right
  push();
  fill(#f4233b);
  translate(width/2, height/2);
  rotate(rad2);
  textSize(minSizeH);
  text(str, -height/2, width/2);
  pop();

  //bottom
  push();
  translate(width/2, height/2);
  rotate(rad3);
  textSize(minSizeW);
  text(str, -width/2, -height/2 +minSizeW);
  pop();
}
