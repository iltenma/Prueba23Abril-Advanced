class animacion
{ //atributos
  color c;
  int x, y;
  int vel;
  int ancho, alto; //ancho y alto de la animacion
  int estadoX, estadoY;
 

  animacion (int an, int alt, int v){
  x= (int) random (width) ;
  y=(int) random (height);
  vel = v;
  estadoX = 0; // estado 0 hacia adelante
  //estado 1 hacia atras
  estadoY = 0;
  float r = random (255);
  float e = random (255);
  float d = (int)random (255);
  c = color (r, e, d);
  ancho = an;
  alto = alt;
  }

void dibujar (){
    fill (c);
     ellipse (x, y, ancho, alto);
  
  if (estadoX==0) x=x+vel;
    else x=x-vel;
    // actualizar estado
    
 if (estadoX==0) {
   {if (x>=width) estadoX=1;}
 } else {
   if (x<=0) estadoX = 0;
 }

if (estadoY==0) y=y+vel;
    else y=y-vel;
    // actualizar estado
    
 if (estadoY==0) {
  {if (y>=height) estadoY=1;}
 } else {
  if (y<=0) estadoY = 0;
 }
 
  noStroke ();
  
  
 

}

}