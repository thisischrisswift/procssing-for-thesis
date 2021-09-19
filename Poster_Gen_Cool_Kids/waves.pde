void waves(){
  //wave
  stroke(#fd8233);
  noFill();
  strokeWeight(random(5, 10));
  //strokeCap(SQUARE);
  //bezier(85, 20, 10, 10, 90, 90, 15, 80);
  push();
  translate(width/2, height/2);
  rotate(PI/random(6));
  float space = random(-height/2, height/2);
  float gap = random(20, 80);
  for (float tri = 0; tri < random(3, 7); tri ++) {
    bezier((space + 85) + (tri*gap), (space + 20) + (tri*gap), (space + 10) + (tri*gap), (space + 10) + (tri*gap),
    (space + 90) + (tri*gap), (space + 90) + (tri*gap), (space + 15) + (tri*gap), (space + 80) + (tri*gap));
  }
  pop();

}
