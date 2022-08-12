void puntaje(){

//titulo   
  textSize(25);
  text ("-PERDISTE-",height/3,100); 

//puntaje final 
textSize(15);
text("PUNTAJE:" + floor(puntaje) ,150,200); 

//boton reinicio
noFill();
  stroke(255,0,0);
  strokeWeight(3);
  rect(100,270,200,50);
  textSize(15);
  text("--> REINICIAR <--",135,300);
}
