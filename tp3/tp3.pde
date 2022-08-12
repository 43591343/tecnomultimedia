//TP#3 - recuperatorio
//Altamirano, Juan Cruz (88233/3)

int pantalla = 0;
int ancho, alto;
PImage barra ;
boolean dentrobotoninicio, dentrobotonreiniciar;
boolean subiendo, cayendo;
float  limiteDeSalto, piso, posx, posy;
int cant;
float [] _posX, _posY, _posXAnterior;
color [] colorObstaculo;
float vida = 100;
int puntaje = 0;
void setup() {

  size(400, 400);
  background(0);
  barra = loadImage("barra.png");

  limiteDeSalto = 100;
  piso = 360;
  posy = 360 ;
  posx = 50;
  ancho = 20;
  alto = 40;
  cant = 1000;

//obstaculos en movimiento
  _posX = new float[cant];
  _posY = new float[cant];
  colorObstaculo = new color[cant];
  ellipseMode(CORNER);
  for (int i = 0; i <  cant; i++) {
    _posX[i] = i * 120 + random(5 , 10);
    _posY[i] = 340;
    colorObstaculo[i] = color(255);
  }
}

void draw() {

  dentrobotoninicio = (mouseX>100 && mouseX<100+200 && mouseY>170 && mouseY<170+50) ;
  dentrobotonreiniciar = (mouseX>100 && mouseX<100+200 && mouseY>270 && mouseY<270+50) ;
 
  //logica de estados
  if ( pantalla == 0 ) { 
    inicio();
  }

  if (dentrobotoninicio && pantalla == 0) {
    fill(255, 1);
    rect(100, 170, 200, 50);
  }

  if (pantalla == 1 ) {
    jugando();
  }

  if (pantalla == 2) {
    puntaje();
  }

  if (dentrobotonreiniciar && pantalla == 2) {
    fill(255,1);
    rect(100, 270, 200, 50);
  }
}

void mousePressed() {

  //boton para empezar
  if ( mousePressed && dentrobotoninicio && pantalla == 0) { 
   background(0);
    pantalla=1;
    vida = 100;
    puntaje = 0;
  
  }

  //boton para reiniciar       
  if (mousePressed && dentrobotonreiniciar && pantalla == 2) {
    background(0);
    pantalla=0;
  }
}
