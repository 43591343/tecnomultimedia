void inicio(){

//titulo   
  textSize(25);
  text ("TP3 TECNO",height/3,100); 
  
//boton jugar
  noFill();
  stroke(255,0,0);
  strokeWeight(3);
  rect(100,170,200,50);
  textSize(15);
  text("--> JUGAR <--",145,200);
  
//instrucciones
  text("intrucciones: presionar {                       } para saltar.", 10,290);
  image(barra,190,265,105,35); 
  text("evitar colisión con obstaculos {      }.", 70,330); 
  fill(255);
  noStroke();
  rect(305,310,10,20);
  text("-ACORDATE TU PUNTAJE AL FINAL-", 70,370); 
  text("(para superarte)", 150,390); 
}
