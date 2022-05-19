
int medidor;
int lukeY;
int darth_vaderY;
int hanX;
int leiaX;
int lucasY;
int lucasX;
int directorX;
int directorY;
int william;
int musico;

void setup(){
  
size (600,600);
PFont SW = (createFont("Starjedi.ttf",30)); 
textFont (SW);
medidor = 1000;
lukeY = 700;
darth_vaderY = -100;
hanX = -100;
leiaX = 700;
lucasY = 800;
lucasX = 300;
directorX = 200;
directorY = -100;
musico = -250;

imageMode (CENTER);

}


void draw (){
  
  frameRate (600);
  
  
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


medidor = medidor - 50;

if (medidor <= -100){image(estrellas ,300,300,600,600);

image (luke,450,lukeY,400,420);

text ("Luke Skywalker: \n Mark Hamill", 50,lukeY);

lukeY -= 10;

 if (lukeY <= -250){image (darth_vader,150,darth_vaderY,400,440);
 
   darth_vaderY += 10; 
   
   text ("Darth vader: \nDavid Prowse \n        y\nJames Earl\n   Jones ", 320,darth_vaderY);
   
   lukeY += 10 ;
   
   if (darth_vaderY >= 780){ image (han_solo, hanX, 300, 400,440);
   
      text ("Han Solo: \n Harrison Ford", hanX, 100);
   
   image (leia, leiaX, 300,400,440);
   
     text("Prinsesa Leia: \n Carrie Fisher", leiaX, 520);
   
   hanX += 10;
   leiaX -= 10;
   
   darth_vaderY += 10;
   
   image (lucas, lucasX,lucasY,400,440);
    text ("director: \n George Lucas",directorX,directorY);

     if (hanX == 860 ){
       
        directorY += 10;
        
       lucasY -= 10;
       
        hanX -= 10; 
        leiaX += 10;}
        
        if (lucasY <= 450){hanX = 811;
    lucasX += 10;
    directorX -= 10;
    
    if (lucasX >= 900){
      image (john, william, william, 400,440);  
      text ("musica: \n John Williams", musico,musico);
      william += 10;
      musico += 10;
      
      if (william >= 700){text ("fin", 300,300);}
    }
   }                     
  }
 }
}

}
