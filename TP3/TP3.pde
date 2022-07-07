
void setup() {
  size(600, 600);

  pincho();
  AA=height/2;
  DI=width/2;
  monedasS();
  textAlign(CENTER);
}

void draw() {
  background(0);


  for (int i=0; i<=4; i++) { 
    pinchos(i);
  }

  monedas();
  perdedor();

  moneda();

  pers();



  ganador();
}


void keyPressed() {
  reiniciar();
}
