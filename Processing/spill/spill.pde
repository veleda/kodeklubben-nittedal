boolean spillStart = false;
float x = 100;
float y = 100;
float fartX = 4;
float fartY = 4;
int strPlate = 150;


int antallTreffPaPlate = 0;

void mousePressed() {
  spillStart = !spillStart;
}

// Denne metoden skal du skrive selv. Her viser du tallet i 'antallTreffPaPlate' i spillet.
void visTeller() {
}

void setup() {
  size(500, 500);
}

void draw() { 
  background(255);
  
  visTeller();

  // ballen
  ellipse(x, y, 20, 20);

  // veggen
  rect(0, 0, 20, height);
  
  // plata
  int littFraKanten = width-30;
  int midtPaPlata = mouseY-strPlate/2;
  rect(littFraKanten, midtPaPlata, 10, strPlate);


  if (spillStart) {

    x = x + fartX;
    y = y + fartY;

    // hvis ballen treffer plata, inverter retning til x slik at ballen spretter tilbake
    if (x > width-30 && x < width-20 && y > mouseY-strPlate/2 && y < mouseY+strPlate/2 ) {
      fartX = fartX * -1;
      x = x + fartX;
  
      antallTreffPaPlate++;
    } 

    // hvis ballen treffer veggen, endre retning på x
    if (x < 25) {
      fartX = fartX * -1.1;
      x = x + fartX;
    }
    
    // hvis ballen treffer i tak/gulv, skift retning på y 
    if ( y > height || y < 0 ) {
      fartY = fartY * -1;
      y = y + fartY;
    }
    
    // reset innstillinger når man taper
    // her skal alle verdier settes til sin opprinnelige verdi
    if (x > width) { 
      
      fill(0);
      textSize(24);
      text("Game Over!", 50, height/2);

    }
  }
}