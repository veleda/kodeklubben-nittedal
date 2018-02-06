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

// En variabel er et sted i datamaskinens minne (RAM) hvor vi kan lagre en dataverdi som vi bruker i programmet vårt.
// Under følger eksempler på fire variable med navnene heltall, desimaltall, tekst og sannhetsverdi.
// Variable er navngitte dataverdier vi kan bruke et annet sted i programmet vårt, for eksempel når vi skal skrive ut
// tallet eller teksten med text();.

int heltall = 42; // int er heltall
float desimaltall = 3.14; // float er desimaltall
String tekst = "Kodeklubben Nittedal"; // String (med stor S) er tekst
boolean sannhetsverdi = true; // boolean er enten true eller false

// Vi kan skrive tall og tekst til skjermen ved å bruke text(det-vi-vil-skrive-ut, x-koordinat, y-koordinat);
text(heltall, 50, 50);
text(desimaltall, 50, 80);
text(tekst, 50, 110);