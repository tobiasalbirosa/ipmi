void dibujar(int pantalla) {
  if (pantalla == 0) {
    background(0);
    strokeWeight(3);
    println("FPS:"+ frameRate);
    println("Nº: "+ frameCount);
    println(width, height, mouseX, mouseY);
    fill(255);
    rect(20, 20, 40, 40);
    quad(200, 200, 400, 100, 300, 300, 100, 300);
    fill(255, 120);
    circle(200, 200, 20);
    ellipse(400, 100, 20, 20);
    line(152, 124, 152, 20);
    noFill();
    stroke(255);
    bezier(400, height/2+mouseY, 50, mouseY, 400, height/2+mouseY, mouseX, height/2+mouseY);
    line(mouseX, mouseY, width/2, height/2);
    line(mouseX, mouseY, width/2+50, height/2+50);
    curve(mouseX, mouseY, width/2, height/2, width/2+50, height/2+50, mouseX, mouseY);
    strokeWeight(20);
    point(width/2, height/2);
    point( width/2+50, height/2+50);
    strokeWeight(1);
    line(mouseX, mouseY, width/2, height/2);
    line(mouseX, mouseY, width/2+50, height/2+50);
    strokeWeight(4);
    fill(variableColor, mouseY);
    triangle(width, height, width, height/2, width/2, height);
    if (mouseY <= 255) {
      tint(mouseY);
    }
    image(fondo, width/1.5, height/10);
    if (mouseY >= 1) {
      textSize(mouseX);
    }
    text("Hola", mouseX, mouseY);
    fill(0, 255, 0);
    variableColor = color(0, 255, 0, mouseX);
    figura.setFill(variableColor);
    shape(figura, mouseX/2, mouseY/2);
    println(variableVerdaderoOFalso);
    println(numero, decimal);
  } else if (pantalla == 1) {

    background(255);
    fill(255);
    circle(width/4, height/2, width/20);
    fill(0);
    text("Volver", width/4, height/2);
    fill(255);

    rect(width/2, height/2, width/20, width/20);
    fill(0);
    text("Siguiente", width/2, height/2);
  } else if (pantalla == 2) {

    fill(0, 6);
    rect(0, 0, width, height);
    rect(contador, 0, width/10, height/10);
    contadorMapeado = map(contador, 0, 500, 0, width);
    circle(posX, height/2, height/10);
    fill(random(0, 20));
    triangle(width-contadorMapeado, height, width-contadorMapeado, height/2, width/2-contadorMapeado, height);
    posX -= velocidad;
    if (retornarValor(posX)) {
      circle(posX, height/2, 200);
    }
  } else if (pantalla == 3) {
    dibujarPantalla3();
  }
}
void dibujarPantalla3() {
  background(255);
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      println(i+j);
      if ((i + j) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(i * width/8, j * width/8, width/8, width/8);
    }
  }
}
void actualizar() {
  contador++;
  if (contador > 200 && estado < 1) {
    estado++;
    contador = 0;
  }
  println(estado);
  if (frameCount %  2 == 0) {
    //println(frameCount);
  }
}

boolean retornarValor(int valor) {
  if (valor > width/2) {
    return true;
  } else {
    return false;
  }
}

void reiniciar() {
  estado = 0;
  contador = 0;
  velocidad = 5;
  posX = width;
  posY = height;
  numero = 100;
}
