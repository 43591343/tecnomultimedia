int pantalla = 0;
PImage barra ;
boolean dentrobotoninicio, dentrobotonreiniciar;
boolean subiendo, cayendo;
int  limiteDeSalto, piso,cant, posy;
int movimiento = 1;

void setup(){
  
  size(400,400);
  background(0);
  
barra = loadImage("barra.png");
  
limiteDeSalto = 130;
piso = 350;
posy = 350 ;
cant = 100;

}

void draw(){

dentrobotoninicio = (mouseX>100 && mouseX<100+200 && mouseY>170 && mouseY<170+50) ;
dentrobotonreiniciar = (mouseX>100 && mouseX<100+200 && mouseY>270 && mouseY<270+50) ;
movimiento --;


//logica de estados
if( pantalla == 0 ){ 
inicio(); }

if(dentrobotoninicio){
  fill(255,1);
  rect(100,170,200,50); }

if (pantalla == 1 ){ 
  jugando();}
  
//if (pantalla == 1 && colisionoobjeto(posx,posy,50/2,x2_,y2_)){
  //pantalla = 2; }

if (dentrobotonreiniciar){
  fill(255,1);
  rect(100,170,200,50); }

if (pantalla == 2){
  puntaje(); }
}

void mousePressed(){
  
//boton para empezar
if( mousePressed && dentrobotoninicio){ 
       pantalla=1; }
       
if (mousePressed && dentrobotonreiniciar){
       pantalla=0; }
}
