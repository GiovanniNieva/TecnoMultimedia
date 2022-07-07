float AA;
float DI;



void pers () {
  rectMode(CENTER);

  fill(0, 255, 0);

  rect (DI, AA, 20, 20);


  if (key =='a') {
    DI -=3;
    if (DI<=0) {
      DI=0;
    }
  }

  if (key=='d') {
    DI +=3;
    if (DI>=width) {
      DI=width;
    }
  }

  if (key=='w') {
    AA-=3;
    if (AA<=0) {
      AA=0;
    }
  }

  if (key=='s') {
    AA+=3;
    if (AA>=height) {
      AA=height;
    }
  }
  if (AA==height/2 && DI==width/2) {
    fill(255);
    textSize(60);
    text ("  Utiliza \n  “WASD“ \npara inicar", width/2, height/3);
  }
}
