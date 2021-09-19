void images3D() {  
  fill(255);
  noStroke();
  sphereDetail(1);
  float tiles = 400;
  float tileSize = height/tiles;
  push();
  translate(width/2, height/2);
  //rotateY(radians(frameCount));
  rotateY(radians(12));

  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = webImg1.get(int(x*tileSize), int(y*tileSize));
      float b = map(brightness(c), 0, 255, 1, 0);
      float z = map(b, 0, 1, -150, 150);

      push();
      translate(x*tileSize - width/4, y*tileSize - height/4, z);
      sphere(tileSize*b*0.8);
      pop();
    }
  }
  pop();
}
