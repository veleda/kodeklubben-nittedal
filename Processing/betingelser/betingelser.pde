/* LIVEPROGRAMMERING FOR KODEKLUBBEN NITTEDAL
   Nittedal bibliotek, 6. februar 2018
   
   ** Last ned Processing fra processing.org, eller bruk vestera.as/processing
   
   AGENDA:
   1. Variable og datatyper
   2. Regneoperasjoner
   3. Metoder
   4. Betingelser
*/

/* Kommentarer som programmeringsspråket ignorerer, skrives inne i slike */
// eller etter dobbel bakslask. Dette er nyttig for oss som programmerer, men ikke noe Processing-programmet bryr seg om.

void setup() {
  size(600, 600); 
}

void draw() {
  
  // En betingelse er noe som enten er sant eller usant.
  // Her spør vi if (mousePressed) { ... }, mousePressed er en variabel innebygd i Processing som forteller om 
  // noen klikker på datamusa eller ikke. Hvis noen gjør det, skal vi tegne en rød firkant.
  // else { ... } hvis noen IKKE klikker på datamusa, så skal vi tegne en blå firkant.
  
  if (mousePressed) {
    fill(255, 0, 0);
    rect(150, 150, 100, 100);
  } else {
    fill(0, 0, 255);
    rect(150, 150, 100, 100);
  }
}