void jugando() { 
  salto();
  
  background(0);
  stroke(255);
  line(0, 380, 400, 380);

  //personaje
  noStroke();
  fill(255, 0, 0);
  ellipse(posx, posy, ancho, ancho); 
  text("Vida: "+ floor(vida) +"%", 10, 20);
  
  //obstaculos en movimiento
 for ( int indice = 0; indice<cant; indice ++) {
    colisiones(_posX[indice], _posY[indice], indice);
    fill(colorObstaculo[indice]);

  if (indice == 1) {
    puntaje ++;
    /*println("PJ Y:", posy);
    println("obstaculo:", _posY[indice]);*/
    }
    
    _posX[indice]--;
    rect(_posX[indice], _posY[indice], ancho, alto);
  }   

  if (vida <= 0) {
    pantalla = 2;
  }
}

//perder
boolean colisiones(float x, float y, int ID) {
  if (x + ancho/2 > posx &&  x - posx <= ancho) {
    if (y - ancho < posy) {
      //println("TRUE");
      vida = vida-0.4;
      colorObstaculo[ID] = color(255, 0, 0);
      return true;
    } else {
      colorObstaculo[ID] = color(255);
      return false;
    }
  } else {
    colorObstaculo[ID] = color(255);
    return false;
  }
}

//logica de salto
void salto() {
  if (subiendo == true && cayendo == false) {
    posy--;
    if (posy < height - limiteDeSalto) {
      cayendo  = true;
      subiendo = false;
    }
  } else if (posy <= piso && cayendo == true) {
    posy++;
  }
  if (posy >= piso && cayendo == true) {
    cayendo = false;
    subiendo = false;
  }
}
//salto
void keyPressed() {
  
  if (key == ' ' && subiendo == false && cayendo == false) {
    subiendo = true;
    cayendo = false;
  }
}   
