int Aa;
int Bb;
void setup () {

  Aa = 400;
  Bb = 100;

  size (600, 600);
}

void draw () {

  background (255);
  fun(0, 600, 25, 0, 0);
  fun (Bb, 100, 25, 100, 0);
  fun (Aa, 100, 25, 100, 25);

  if (key ==' ') {
    Aa=400; 
    Bb=100;
  } else if (key=='s') {
    Aa=100; 
    Bb=400;
  }
}
