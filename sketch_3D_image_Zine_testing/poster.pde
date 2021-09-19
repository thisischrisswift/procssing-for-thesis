String str1 = "Chris Swift";
String str2 = "VCFA 2020";
String str3 = "Pin Up Pin Up Pin Up";
String str4 = "The Shape of Text_poster.txt ";
String body = "";
String[] allwords;
String delimiters = "***";


PFont font;
PFont bigText;

void poster() {
  smooth(); 
  textMode(SCREEN);
  String main = "ray-caster-essay.txt";
  String[] rawtext = loadStrings(main);
  String everything = join(rawtext, "" );
  allwords = splitTokens(everything, delimiters);
  str1 = str1.toUpperCase();
  str2 = str2.toUpperCase();
  str3 = str3.toUpperCase();
  str4 = str4.toUpperCase();
  font = createFont("GT-Walsheim-Black.otf", 12);
  bigText = createFont("GT-Super-Display-Super-Trial.otf", 24);
  stroke(0);
  float hUnit = height/gridNum;
  float wUnit = width/gridNum;
  
  //header
  fill(255);
  textFont(font, 16);
  text(str1, wUnit, hUnit-12, wUnit * 2, hUnit*2);
  text(str2, wUnit * 4, hUnit-12, wUnit * 2, hUnit*2);
  text(str3, wUnit * 7, hUnit-12, wUnit * 4, hUnit*2);

  //Big Text
  fill(255, 0, 0);
  textFont(bigText, 120);
  textLeading(hUnit);
  //int rand = (int)random(allwords.length);
  //text(main, wUnit, hUnit * 3, width - (wUnit * 2), height - hUnit);
  text(allwords[1], wUnit, (hUnit * 3) + 6, width - (wUnit * 2), height - hUnit);

  //body
  fill(255);
  textFont(font, 16);
  textLeading(16);
  //int rand = (int)random(allwords.length);
  text(body, wUnit*2, hUnit * 9, width - (wUnit * 10), height - hUnit);

  //noLoop();
}
