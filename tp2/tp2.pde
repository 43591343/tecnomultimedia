/* Altamirano, Juan Cruz
TP2: ilusion optica

https://youtu.be/6KA0ZNbnhnk
(problemas con el audio) */

int posX,posY;
boolean zona;

void setup() {
  
  size(400,400);
  background(0);
  
 posX=200;
 posY=200;
}
void draw(){
  
zona = (mouseX > 150 && mouseY > 150 && mouseX < 250 && mouseY < 250);

//circulo 
for (int circulos=350; circulos>0; circulos -= 10) {
float r = random(3,4);
  ellipse(posX,posY,circulos,circulos);
  fill(255,95,3);
  stroke(124,2,152);
  strokeWeight(3);
  
//psicodelia
if(frameCount>50)
  strokeWeight(r); }

//interaccion de ilusion
if (mousePressed && zona){
   
  posX = mouseX;
  posY = mouseY; }
  
else {
  posX = 200;
  posY = 200; }
}
  
//reiniciar programa
void keyPressed(){
  background(0);
 frameCount = 0; }
