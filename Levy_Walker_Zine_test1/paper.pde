void paper() {
  push();
  strokeWeight(12);
  noStroke();
  //for (int i = 0; i<width-1; i+=2) {
  //  for (int j = 0; j<height-1; j+=2) {
  //    fill(random(205-40, 205+30), 25);
  //    rect(i, j, 1, 1);
  //  }
  //}

  for (int i = 0; i<30; i++) {
    fill(random(130, 215), random(30, 100));
    rect(random(0, width-2), random(0, height-2), random(1, 3), random(1, 3));
  }

  pop();
}
