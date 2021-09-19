void lWalker() {
  String text = "x,y";
  strokeCap(SQUARE);
  
  stroke(#e95354);
  strokeWeight(0.5);
  //strokeWeight(random(20, 60));
  line(pos.x, pos.y, prev.x, prev.y);
  prev.set(pos);

  PVector step = PVector.random2D();

  float r = random(100);
  if (r < 100) {
    step.mult(random(width/(gridNum/2), height/(gridNum/2)));
    strokeWeight(1);
    //strokeWeight(random(20, 60));
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
