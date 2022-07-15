void jugando(){ 
 
  background(0);
  stroke(255);
  line(0,380,400,380);
  
//personaje
  noStroke();
  fill(255,0,0);
  ellipse(50,posy,50,50); 

//salto
if (key == ' ' ){
   subiendo = true; 
 
if (this.subiendo == true && this.cayendo == false) {
      this.posy--;
      if (this.posy < height - this.limiteDeSalto) {
      this.cayendo  = true;
      this.subiendo = false; }
    } 
else if (this.subiendo == false || this.cayendo == true) {
      this.posy ++;}
 if (this.posy == this.piso) {
      this.subiendo = false;
      this.cayendo = false;}
}
//obstaculos en movimiento
int miarreglo [] = new int [3];
miarreglo[0] = 330;
miarreglo[1] = 310;
miarreglo[2] = 350;

for ( int indice = 0 ; indice<cant; indice ++){
  fill(255); 
  triangle(indice*150+movimiento,380,indice*180+movimiento,330,indice*210+movimiento,380); } 
 

 }   
