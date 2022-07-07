

float posMX[] = new float [10];
float posMY[] = new float [10];

void monedasS() {

  for (int i=0; i<=9; i++) {

    posMX[i]= random(0, width);
    posMY[i]= random(0, height);
  }
}
void monedas() {

  fill(255, 255, 0);

  for (int i=0; i<=9; i++) {

    ellipse(posMX[i], posMY[i], 10, 20);
  }
}
