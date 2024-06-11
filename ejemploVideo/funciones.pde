void pantallas() {
  if (retornar(pantalla)) {
    background(0);
  }
  if (pantalla == 0) {
    verdaderoOFalso = true;
    //0-255 R G B
    //background(255, 255, 255);
    //if, else, else if
    //map
    valorDeMap = map(mouseY, 0, height, 0, 255);
    tint(valorDeMap);
    image(fondo, 0, 0, width, height);
    fill(255);
    text(texto, mouseX, mouseY);
    /*
  push();
     fill(0, 255, 0);
     stroke(255, 0, 0);
     rect(20, 20, 20, 20);
     pop();
     quad(150, 20, 170, 20, 190, 40, 130, 40);
     circle(mouseX, mouseY, width/10);
     ellipse(200, 200, 100, 50);
     //x1, y1, x2, y2
     line(400, 200, 400, 100);
     triangle(width, height, width, height/2, width/2, height);
     point(500, 500);
     push();
     fill(0,mouseY,0);
     beginShape();
     
     vertex(400, 400);
     vertex(440, 440);
     vertex(440, 480);
     vertex(400, 480);
     vertex(400, 400);
     
     endShape();
     pop();
     */

    // println(frameCount);
    /*
    println(mouseX, mouseY);
     println(frameRate);
     println(width, height);
     */
    /*

     
     
     
     
     
     
     
     */
    //arc
    //bezier
    //curve
    colorPersonalizado = color(0, numeroEntero, 0);
    fill(colorPersonalizado);
    //noStroke();
    //curve

    arc(200, 200, 200, 200, 0, PI);
    bezier(300, 400, 400, 400, 300, 500, 400, 500);
    curve(random(250, 300), 400, 400, 400, 300, 500, random(400, 450), random(500, 550));
  } else if (pantalla == 1) {
    contador++;
    numeroEntero-=velocidad;

    if (contador > 300) {
      contador = 0;
    }
    if (numeroEntero <= 0) {
      numeroEntero = width;
    }
    background(255);

    if (contador % 100 == 0) {
      //   background(0);
    } else {
    }
    //&& ||
    rect(0, 0, contador, height);
    rect(numeroEntero, 0, width, height);
    if (mouseY > height/3) {
      circle(mouseX, mouseY, 100);
    } else {
    }
  } else if (pantalla == 2) {

    background(0);

    circle(width/2, height/2, 100);
    rect(width/3, height/2, 100, 100);
  } else if (pantalla == 3) {

    for (int i = 0; i < cantidad; i++) {
      for (int j = 0; j < cantidad; j++) {
        push();
        translate(i * tam + tam/2, j * tam + tam/2);
        rotate(map(mouseX, 0, width, 0, PI*2));
        rect(0, 0, tam, tam);
        pop();
      }
    }
  }
}

void mouseClicked() {
  if (pantalla == 2) {
    if (dist(width/2, height/2, mouseX, mouseY) < 100/2) {
      pantalla = 0;
    }
    //width/3,height/2,100,100
    if (mouseX > width/3 && mouseX < width/3 + 100 &&
      mouseY > height/2 && mouseY < height/2 + 100) {
      pantalla = 0;
    }
  }
}


boolean retornar(int valor) {
  if (valor == 0) {
    return true;
  } else {
    return false;
  }
}
