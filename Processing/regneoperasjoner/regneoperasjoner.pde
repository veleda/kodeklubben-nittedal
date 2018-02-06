size(600, 600);
textSize(25);
background(0);

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

int a = 5 + 4;
int b = 5 - 4;
int c = 5 * 4;
int d = 5 / 4;

text("a: " + a, 50, 50);
text("b: " + b, 50, 80);
text("c: " + c, 50, 110);
text("d: " + d, 50, 140);

// d vil være 1, fordi dette er heltall og ikke desimaltall. For korrekt svar, bruk float.
float e = 5.0 / 4.0;

text("e: " + e, 50, 170);