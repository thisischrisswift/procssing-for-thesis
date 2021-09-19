void tris() {
  //trianlge
  fill(#fd8233);
  noStroke();
  float space = random(width/2);
  float gap = random(70, 200);
  for (float tri = 0; tri < random(3, 7); tri ++) {
    triangle((space + 30) + (tri*gap), (space + 75) + (tri*gap), (space + 58) + (tri*gap), (space + 20) + (tri*gap), (space + 86) + (tri*gap), (space + 75) + (tri*gap));
  }
}
