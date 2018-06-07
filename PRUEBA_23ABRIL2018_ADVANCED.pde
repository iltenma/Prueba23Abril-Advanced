//crear un objeto de la clase 


animacion ani1, ani2;
animacion [] coleccionani;
boolean congelar;  // variable de comparacion


void setup () {
size (600, 600);
frameRate (50);
congelar = false; //costante true or false 

ani1= new animacion (30, 400, 30); //primer numero es el ancho de la animacion y el segundo es el alto, el tercero la velocidad
ani2 = new animacion (50, 30, 10);
coleccionani = new animacion [150];
//darle valores a la collecion
  for (int i=0; (i<coleccionani.length); i=i+1)
  {
    //visitar el elemento que ocupa la posicion i del vector
    int vel = (int) random (10);
    coleccionani [i]= new animacion (30, 30, vel);
    //i = i+1
  
}
}

void draw () {
  
  
 //ani1.dibujar();
  //ani2.dibujar();
  if (!(congelar)){
    background (0);
  for (int i=0; (i<coleccionani.length); i=i+1)
  {
    //visitar el elemento que ocupa la posicion i del vector
    coleccionani [i].dibujar();
    //i = i+1
  
}
}
}
//se cambia de estado cuando se pulsa el raton

void mousePressed (){
  congelar = true;
  color nuevo = color (random (255), random (255), random (255));
  for (int i=0; (i<coleccionani.length); i=i+1)
  {
    //visitar el elemento que ocupa la posicion i del vector
    coleccionani [i].c = nuevo;
    //i = i+1
  
}
}

void mouseReleased (){
  congelar = false;
}