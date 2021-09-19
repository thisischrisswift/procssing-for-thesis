float r;
float factor = 0;
float gridNum = 12;




void setup() {
  size(800, 1300, P3D);
  textMode(SHAPE);
  String url = "ray-caster-essay.txt";
  String[] rawtext = loadStrings(url);
  String everything = join(rawtext, "" );
  allwords = splitTokens(everything, delimiters);
  font = createFont("BauOT.otf", 30);
  textFont(font);
}


void draw() {
  background(#002fa7);
  grid();
  getImages();
  images3D();
  poster();
}

//save function
int value = 0;
void keyPressed() {
  if (value == 0) {
    saveFrame("3D Poster-######.tiff");
  }
}
