int opacidad;
int medidor;
int lukeY;
int darth_vaderY;
int hanX;
int leiaX;
int lucasY;

void setup(){
size (600,600);
medidor = 1000;
lukeY = 700;
darth_vaderY = -100;
hanX = -100;
leiaX = 700;
lucasY = 800;
imageMode (CENTER);

}


void draw (){
  
  frameRate (500);

  opacidad = 1;
  
  
  PImage estrellas = loadImage ("estrellas.jpeg"); 
  
  PImage starwars = loadImage ("logoSW.png");
  
  PImage luke = loadImage ("luke.png");
  
  PImage darth_vader = loadImage ("vader.png");
  
  PImage han_solo = loadImage ("solo.png");
  
  PImage leia = loadImage ("leia.png");
  
  PImage john = loadImage ("williams.png");
  
  PImage lucas = loadImage ("lucas.png");
   
  
  image(estrellas ,300,300,600,600);
  
  image (starwars, 300,300,medidor,medidor);


medidor = medidor - 100;

if (medidor <= -100){image(estrellas ,300,300,600,600);

image (luke,450,lukeY,400,420);

text ("Luke Skywalker: \n Mark Hamill", 50,lukeY);

lukeY -= 10;

 if (lukeY <= -250){image (darth_vader,150,darth_vaderY,400,440);
 
   darth_vaderY += 10; 
   
   text ("Darth Vader: \n  David Prowse y James Earl Jones", 350,darth_vaderY);
   
   lukeY += 10 ;
   
   if (darth_vaderY >= 780){ image (han_solo, hanX, 300, 400,440);
   
      text ("Han Solo: \n Harrison Ford", hanX, 100);
   
   image (leia, leiaX, 300,400,440);
   
     text("Prinsesa Leia: \n Carrie Fisher", leiaX, 520);
   
   hanX += 10;
   leiaX -= 10;
   
   darth_vaderY += 10;
   
     image (lucas, 300,lucasY,400,440);
       
     if (lucasY <= 450){lucasY += 10;
          hanX = 811;}
   
     if (hanX == 810 ){
       
       lucasY -= 10;
       
          hanX -= 10; 
          leiaX += 10;}              
          
  }
 }
}

}
