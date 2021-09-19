void textFrame() {
  PFont font;
  String title = "vermont";
  String footer = "October 2020";
  String left = "fall semester";
  String right = "college of fine arts";

  title = title.toUpperCase();
  footer = footer.toUpperCase();
  left = left.toUpperCase();
  right = right.toUpperCase();

  font = createFont("CircularStd-Book.otf", 30);
  textFont(font);

  float minSizeW = 30/textWidth(title) * width;
  float minSizeH = 30/textWidth(title) * height;

  float footerSizeW = 30/textWidth(footer) * width;
  float footerSizeH = 30/textWidth(footer) * height;

  float leftSizeW = 28/textWidth(left) * width;
  float leftSizeH = 28/textWidth(left) * height;

  float rightSizeW = 30/textWidth(right) * width;
  float rightSizeH = 30/textWidth(right) * height;




  //header
  push();
  textSize(minSizeW);
  fill(255);
  text(title, 0, minSizeH/2);
  pop();

  //left
  push();
  fill(255);
  rotate(radians(90));
  textSize(leftSizeH);
  text(left, 0, 0);
  pop();

  //right
  push();
  fill(255);
  translate(width/2, height/2);
  rotate(radians(-90));
  textSize(rightSizeH);
  text(right, -height/2, width/2);
  pop();


  //footer
  push();
  fill(255);
  textSize(footerSizeW);
  text(footer, 0, height);
  pop();

  println(minSizeH);
}
