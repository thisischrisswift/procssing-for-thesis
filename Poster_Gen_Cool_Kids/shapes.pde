void shapes() {
  //circle
  fill(#fd8233);
  //circle(random(width), random(height), random(100));

  //waves
  waves();


  //triangles
  push();
  translate(width/2, height/2);
  rotate(PI/2);
  tris();
  pop();

  //square
  fill(#fd8233);
  float rectX = random(width/2);
  float rectY = random(height/2);
  float rectSize = width/random(12, 30);
  push();
  rotate(radians(random(-90, 90)));
  for (float i = 0; i < random(3, 7); i++) {
    rect(rectX + (rectSize * i) * 2, rectY, rectSize, rectSize);
  }
  pop();
}
