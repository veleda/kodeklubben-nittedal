int tall = 60;

// To tabeller med plass til 60 verdier. 
// Indeks fra 0 til 59.
int mx[] = new int[tall];
int my[] = new int[tall];

void setup() {
  size(800, 800);
  noStroke();
  fill(255, 155); 
}

void draw() {
  background(50); 
  
  // draw() går gjennom tabellen, og gir hver "frame" en ny plass i tabellen.
  // Vi overskriver gamle verdier med nye hele tiden.
  // Å bruke modulo (%) gjør denne operasjonen mye raskere.
  // Modulo gir resten etter deling. F.eks. 100 % 60 er 40, for når vi
  // deler 100/60, får vi 40 til rest (1*60+40).
  // frameCount teller antall "frames" siden du startet programmet
  int hvilken = frameCount % tall;
  
  // Siden vi alltid tar modulo av 60, får vi aldri et tall større enn 60.
  // Dermed får vi plass i tabellen til verdiene til musepilen.
  mx[hvilken] = mouseX; // her lagrer vi data i tabellen
  my[hvilken] = mouseY;
  
  for (int i = 0; i < tall; i++) {

    // indeks angir hvor vi skal tegne sirklene
    int indeks = (hvilken + i) % tall; // må % tall, slik at vi får plass
    
    // siden vi har lagrer posisjonen til mouseX og mouseY, så 
    // vet vi hvor vi var for litt siden. 
    // Sirklene tegnes, og vi fjerner alltid den eldste.
    ellipse(mx[indeks], my[indeks], i, i); // her bruker vi data fra tabellen
  }
}