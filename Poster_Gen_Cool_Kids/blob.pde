void bottomBlob(){
float resolution = 13;  // Antal vertices i blob (virker bedst fra 13+)/Number of vertices in blob (works best from 13+)
float rad = height/3;  // Radius på blob / Radius of blob
float x;  // X-koordinat på vertex / X-coordinate on vertex
float y;  // Y-koordinat på vertex /Y-coordinate on vertex
float round = random(0, 100); // Rundhed - jo større tal, jo mere aflang / Roundness - the larger the number, the more elongated

float nVal; // Noise: Værdi / Noise: Value
float nInt = 100; // Noise: Intensitet / Noise: Intensity
float nAmp = 0.184; // Noise: Udsving / Noise: Fluctuation
float nSeed = random(0, 1000); // Noise: Unik værdi

float t = 0; // Tid passeret / Time passed
float tChange = 0.01; // Hvor hurtigt tiden går / How fast time goes

  pushMatrix();  // Isolér placering til hver enkelt blob (push) / Isolate location for each blob (push)
  translate(width/2, height/1.2);  // Placering af blob (samt bevægelse på Y-aksen) / Position of blob (as well as movement on the Y-axis)
  noiseDetail(3, 0);  // Noiseværdier / Noise values
  noStroke();
  fill(#62e36d);

  /* Oprettelse af blobform */
  // * Creating blobform * //

  beginShape();
  for (float a=-1; a <= TWO_PI; a += TWO_PI/resolution) {  // Skab punkter rundt i hel cirkel (TWO_PI) og fordel dem ud fra resolution / Create points around a full circle (TWO_PI) and distribute them based on resolution

    nVal = map(noise(cos(a)*nInt+nSeed, sin(a)*nInt+nSeed, t), 0.0, 1.0, nAmp, 1.0);  // Map noiseværdi for at matche udsvinget / Map noise value to match the fluctuation

    x = cos(a)*(rad+round) *nVal;  // Punktets X-koordinat (radius+rundhed) / X-coordinate of the point (radius + roundness)
    y = sin(a)*rad *nVal;  // Punktets Y-koordinat / The Y coordinate of the point

    curveVertex(x, y);  // Opret curveVertex punkt ud fra koordinater / Create curveVertex point based on coordinates
  }
  endShape(CLOSE);

  popMatrix();  // Isolér placering til hver enkelt blob (pop) / Isolate location for each blob (pop)

  t += tChange;
}
