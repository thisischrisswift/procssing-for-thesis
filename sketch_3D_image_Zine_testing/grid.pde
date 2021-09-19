void grid(){
  stroke(255);
  float hUnit = height/gridNum;
  float wUnit = width/gridNum;
  for(float i = 1; i <= gridNum; i++) {
    line(0, hUnit * i, width, hUnit * i);
    for(float x = 1; x <= gridNum; x++ ){
      line(wUnit * x, 0, wUnit * x, height);
    }
  }
  
}
