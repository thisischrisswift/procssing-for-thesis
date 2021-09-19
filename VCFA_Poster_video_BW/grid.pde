void grid() {
  stroke(255);
  strokeWeight(0.5);
  float hUnit = height/gridNumber;
  float wUnit = width/gridNumber;


  for (float i = 0; i <= gridNumber; i++) {
    line(0, hUnit*i, width, hUnit*i);
    for (float x = 1; x <=gridNumber; x++){
      line(wUnit * x, 0, wUnit * x, height);
    }
  }
}
