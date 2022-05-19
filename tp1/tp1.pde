/* TP1
Altamirano juan cruz
Pelicula: Cars 1
*/
PImage titulo;
PFont tipografia;
int movimiento;
String personajes = " LIGHTNING McQUEEN: OWEN WILSON \n DOC HUTSON: PAUL NEWMAN \n SALLY: BONNIE HURT \n MATER: LARRY THE CARLE GUY \n RAMONE: CHEECH MARIN  \n LUIGI: TONY SHALHOUD \n GUIDO: GUIDO QUERDAI \n FLO: JENIFER LEWIS \n SHERIFF: MICHAEL WALLIS \n SARGE: PAUL DOBLEY \n FILLMORE: GEORGE CARLIC \n LIZZIE: KATHERINE HELMOND \n MACK: JOHN ARTZENBEAGER \n RED: JOE RANFT \n CHICK KICKS: MICHAEL KERTON \n THE KING: RICHARD PETTY \n HARV: JEREMY PIVER \n BOB CUTLASS: BOB COSTAS \n DARRELL CARTRIP: DARRELL WALTRIP \n VAN: RICHARD KIND \n MINNY: EDIE McCLURG \n TEX: HUMPY WREELER \n RUSTY RUST-EZE: TOM MAGLIOZZI \n DUSTY RUST-EZE: RAY MAGLIOZZI \n Mrs.THE KING: LYNDA PETTY \n FRED: ANDREW STANTON \n JUNIOR: DALE ERANHARDT, JR. \n MICHAEL SCHUMACHER FERRARI: MICHAEL SCHUMACHER \n JAY LIMO: JAY LENO \n MARIO ANDRETTI: MARIO ANDRETTI \n KORI TUNDOWITZ: SARAH CLARK \n HOT CHUCK: MIKE NELSON \n PETENBILT: JOE RANFT \n BOOST: JONAS RIVERA \n SAQTRON: LOU ROMANO \n WINGO: ADRIAN OCHOA \n DJ: E.J.HOLOWICKI \n TIN: ELISSA KNIGHT \n MIN: LINDSEY COLLINS \n MOTORHOME RACE FANS: LARRY BENTON" ;
String direccion = "     directed by  \n  \n  co-directed by ";
String direccion2 = " JOHN LASSETER \n  \n     JOE RANFT";
String produccion = "        produced by \n \nassociate produced by";
String produccion2 = "  DARLA K. ANDERSON \n \n    THOMAS PORTER";
PImage imagenfinal;
float tam;
float brillo;

void setup(){
size(400,400);
background(0);

titulo = loadImage ("imagen1.jpg");
tipografia = loadFont("Impact-48.vlw");
imagenfinal = loadImage("imagen2.jpg");
}

void draw() {
 println(frameCount);
 println(mouseX,mouseY);
 
 movimiento = frameCount*3;
 tam = random(0,500);
 brillo = random(0,80);
 
  //pantalla 1 "titulo"
   image (titulo,0,70,400,250);
if (frameCount>70){
 tint(0,0,0,50);}
 
//pantalla 2 "direccion"  
 if (frameCount>120 && frameCount<190) {
 background(0);
 fill(200,50,50);
  textFont(tipografia);
 text(direccion,20,120);
 fill(250,220,120);
 text(direccion2,40,175);
}

//pantalla 3 "produccion"
if (frameCount>220 && frameCount<290){
  background(0);
 textFont(tipografia);
  textSize(35);
 fill(40,230,110);
 text(produccion,30,130);
 fill(50,230,250);
 text(produccion2,50,170); }
   
//pantalla 4 "personajes"
if (frameCount>300) {
background(0);
textFont(tipografia);
textSize(17);
fill(230,180,220);
text("CAST",10,1380-movimiento);
 fill(250,220,120);
 text(personajes,10,1400-movimiento); }
 
//pantalla 5 "imagen final"
if (frameCount>730) {
  noTint();
  image(imagenfinal,0,50,400,300);}
 
 if (frameCount>760 && frameCount<920 ){
  noStroke();
  fill(255,brillo);
ellipse(185,185,tam,tam);}

 if(frameCount>800 && frameCount<920){
 ellipse(185,185,movimiento,movimiento);}
 
 if(frameCount>1000){
   background(0);}

}
