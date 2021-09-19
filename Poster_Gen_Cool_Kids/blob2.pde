void topBlob(){
float resolution = 13;  // Antal vertices i blob (virker bedst fra 13+)
float rad = height/3;  // Radius på blob
float x;  // X-koordinat på vertex
float y;  // Y-koordinat på vertex
float round = random(0, 100); // Rundhed - jo større tal, jo mere aflang

float nVal; // Noise: Værdi
float nInt = 100; // Noise: Intensitet
float nAmp = 0.184; // Noise: Udsving
float nSeed = random(0, 1000); // Noise: Unik værdi

float t = 0; // Tid passeret
float tChange = 0.01; // Hvor hurtigt tiden går

  pushMatrix();  // Isolér placering til hver enkelt blob (push)
  translate(width/2, height/6);  // Placering af blob (samt bevægelse på Y-aksen)
  noiseDetail(3, 0);  // Noiseværdier
  noStroke();  // Ingen streg
  fill(#fab5ee);  // Fyldfarve

  /* Oprettelse af blobform */

  beginShape();  // Begynd form
  for (float a=-1; a <= TWO_PI; a += TWO_PI/resolution) {  // Skab punkter rundt i hel cirkel (TWO_PI) og fordel dem ud fra resolution

    nVal = map(noise(cos(a)*nInt+nSeed, sin(a)*nInt+nSeed, t), 0.0, 1.0, nAmp, 1.0);  // Map noiseværdi for at matche udsvinget

    x = cos(a)*(rad+round) *nVal;  // Punktets X-koordinat (radius+rundhed)
    y = sin(a)*rad *nVal;  // Punktets Y-koordinat

    curveVertex(x, y);  // Opret curveVertex punkt ud fra koordinater
  }
  endShape(CLOSE);  // Afslut form

  popMatrix();  // Isolér placering til hver enkelt blob (pop)

  t += tChange;
}
