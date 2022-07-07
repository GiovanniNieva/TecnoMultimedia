int []tam = new int [5] ;
float [] posX = new float [5];
float [] posY = new float [5];
float []dirX = new float [5]; 
float []dirY = new float [5]; 
int []vel =new int [5]; 

boolean reboteX;

void pincho () {  
  for (int i=0; i<=4; i++) {
    tam [i]= 40;
    dirX [i]= random (2, -2);
    dirY [i]= random (2, -2);
    vel [i]= 2;  
    posX [i]= random(20, width-tam[i]);
    posY [i]=random(20, height-tam[i]);
  }
  reboteX = true;
}

void pinchos (int A) {

  fill(255, 0, 0);

  ellipse(posX[A], posY[A], tam[A], tam[A]);

  if (posX[A]+tam[A]/2 > width || posX[A]-tam[A]/2 < 0) {
    dirX[A] = (dirX[A] * -1);
  }

  posX [A] = posX [A] + (dirX[A] * vel[A]);

  if (posY[A]+tam[A] > height || posY[A]-tam[A]/2 < 0) {
    dirY[A] = (dirY[A] * -1);
  }
  posY[A] = posY[A] + (dirY[A] * vel[A]);
}
