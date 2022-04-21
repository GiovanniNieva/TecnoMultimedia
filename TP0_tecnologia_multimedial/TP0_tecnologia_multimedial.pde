/* Giovanni Nieva, tp0, */
PFont fuente; 

void setup (){
  
  fuente = loadFont ("FM.vlw");
  
size (600,600);
background (255);

fill (183,137,109);

noStroke ();
rect (250,50,70,300); /*cabeza*/
rect (240,60,90,100); /*cabeza*/
rect (230,70,110,60); /*cabeza*/

fill (77,50,0);

rect (250,50,70,30);
rect (240,60,90,30);
rect (230,70,10,40);
rect (330,70,10,40);
rect (320,90,10,10);
rect (240,90,10,10);


fill (255,0,0);

rect (220,170,130,170); /*cuerpo*/
rect (210,180,150,160); /* cuerpo*/

fill (183,137,109);

rect (210,210,20,130);
rect (340,210,20,130);

fill (255);

rect (250,110,10,10);
rect (310,110,10,10);
rect (260,135,50,10);
rect (265,145,40,10);

fill (0);

rect (260,110,10,10);
rect (300,110,10,10);

rect (230,320,30,150); /*piernas*/
rect (310,320,30,150); /*piernas*/
rect (230,320,100,30);
fill (255);
rect (231,450,28,30);
rect (311,450,28,30);

stroke (1);
fill (255);

rect (200,470,60,30); /*pies*/
rect (310,470,60,30); /*pies*/

fill (183,137,109);
noStroke ();

rect (210,320,30,10);
rect (330,320,30,10);

fill (0);

textFont (fuente);
text ("Giovanni",200,550);

}

/*color piel 183,137,109
pantalon 0
remera 255,0,0
pies 255 stroke 1
pelo 77,50,0
*/ 
