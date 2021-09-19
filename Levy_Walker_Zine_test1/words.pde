void words() {
  fill(255);
  t = t + 0.15;
  float x = noise(t);
  float y = noise(t);
  next = next + 1;
  y = map(y, 0, 1, 0, height);
  x = map(x, 0, 1, 0, width);
  float leftOvers = width - x;
  textSize(14);
  text(allwords[next], random(20, leftOvers), random(20, 200), x, height);
  textSize(8); 
  text("p." + frameCount, pos.x, pos.y);
}
