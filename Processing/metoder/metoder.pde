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

// Metoder er blokker med kode som enten er skrevet av noen andre, slik at vi kan bruke de, eller skrevet av oss selv.
// I Processing er det vanlig å skrive minst to metoder selv, alltid. Det er setup() og draw().

// I setup() programmerer vi alt som skal skje én gang når programmet starter.
void setup() {
  size(600, 600); // size() er en metode som er innebygd i Processing, den gir oss mulighet til å endre størrelsen på skjermen til programmet
  textSize(25); // textSize() endrer tekststørrelsen på det vi skriver til skjermen
  background(0); // background() endrer bakgrunnsfargen, 0 er svart
} // Programmeringsblokken starter med { og slutter med }

// draw() kjører hele tiden mens programmet kjører, her kan vi _tegne_ ting!
void draw() {
  fill(255, 0, 0); // fyller den fasongen som kommer med farge i (R, G, B)
  ellipse(150, 150, 100, 100); // tegner en sirkel på formen ellipse(x-pos, y-pos, sirkelbredde, sirkelhøyde)
  
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 100, 100); // mouseX og mouseY er innebygde variable i Processing, de vet alltid hvor musepilen er
}

// Metoder som er skrevet et annet sted bruker vi slik: metodenavn(verdi1, verdi2, ...);
// Metoder vi skriver selv skriver vi slik:
// void metodenavn(verdi1, verdi2, ...) { ... }
// Metoder trenger ikke ha verdier i ().