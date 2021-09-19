String str1 = "Chris Swift";
String str2 = "VCFA 2020";
String str3 = "a Theory of Aleatory Design";
String str4 = "The Shape of Text_poster.txt ";
String body = "On the bookshelf, there are a very select handful of books that have made it through the various purges that proceed each move we make across the continent.";
String[] allwords;
String delimiters = ".,/?:;(){}[]/";
String text = "x,y";

PFont font;
PFont bigText;

void poster() {
  String main = "The Shape of Text_poster.txt";
  String[] rawtext = loadStrings(main);
  String everything = join(rawtext, "" );
  allwords = splitTokens(everything, delimiters);
  str1 = str1.toUpperCase();
  str2 = str2.toUpperCase();
  str3 = str3.toUpperCase();
  str4 = str4.toUpperCase();
  font = createFont("BauOT.otf", 12);
  bigText = createFont("NationalPark-Outline.otf", 24);
  //float gridNum = 12;
  stroke(0);
  float hUnit = height/gridNum;
  float wUnit = width/gridNum;
  fill(255);
  textFont(font, 20);
  text(str1, wUnit, hUnit/2, wUnit * 2, hUnit*2);
  text(str2, wUnit * 4, hUnit/2, wUnit * 2, hUnit*2);
  text(str3, wUnit * 7, hUnit/2, wUnit * 4, hUnit*2);

  //Big Text
  fill(255, 0, 0);
  textFont(bigText, 220);
  textLeading(180);
  //int rand = (int)random(allwords.length);
  text(main, wUnit, hUnit * 3, width - (wUnit * 2), height - hUnit);
  //text(allwords[0], wUnit, hUnit * 3, width - (wUnit * 2), height - hUnit);

  //body
  fill(255);
  textFont(font, 16);
  textLeading(16);
  //int rand = (int)random(allwords.length);
  text(body, wUnit*2, hUnit * 9, width - (wUnit * 10), height - hUnit);

  //noLoop();
}
