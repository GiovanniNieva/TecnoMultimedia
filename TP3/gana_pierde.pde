
boolean ganando() {

  boolean G0 = posMX[0] == -10;
  boolean G1 = posMX[1] == -10;
  boolean G2 = posMX[2] == -10;
  boolean G3 = posMX[3] == -10;
  boolean G4 = posMX[4] == -10;
  boolean G5 = posMX[5] == -10;
  boolean G6 = posMX[6] == -10;
  boolean G7 = posMX[7] == -10;
  boolean G8 = posMX[8] == -10;
  boolean G9 = posMX[9] == -10;

  return G0 && G1 && G2 && G3 && G4 && G5 && G6 && G7 && G8 && G9;
}


boolean gana (int i) {


  boolean ganaste1 = DI <= posMX[i]-10;
  boolean ganaste2 = AA <= posMY[i]-20;
  boolean ganaste3 = DI >= posMX[i]+10;
  boolean ganaste4 = AA >= posMY[i]+20;

  return ganaste1 || ganaste2 || ganaste3 || ganaste4 ;
}

boolean perd (int i) {


  boolean perdiste1 = DI <= posX[i]-20;
  boolean perdiste2 = AA <= posY[i]-20;
  boolean perdiste3 = DI >= posX[i]+20;
  boolean perdiste4 = AA >= posY[i]+20;

  return perdiste1 || perdiste2 || perdiste3 || perdiste4 ;
}

void perdedor () {
  for (int i=0; i<=4; i++) { 
    if (!perd(i)) {
      AA= height*2; 
      DI= width*2;
    }
    if (AA>=height + 1 || DI>= width + 1) { 

      fill(255);

      textSize(60);
      text("  PERDISTE \n  presiona \n  “espacio“ \npara reiniciar", width/2, height/3);
    }
  }
}

void reiniciar() {
  if (key ==' ') {
    DI= width/2;
    AA= height/2;
    monedasS();
  }
}

void ganador () {

  if (ganando()) {
    textSize(60);
    textMode (MODEL);
    fill(255);
    text ("GANASTE", width/2, height/2);
    AA= height*-2; 
    DI= width*-2;
  }
}

void moneda () {

  for (int i=0; i<=9; i++) { 
    if (!gana(i)) {
      posMX[i]= -10; 
      posMY[i]=-10;
    }
  }
}
