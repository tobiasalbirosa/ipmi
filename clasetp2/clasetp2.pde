//TP2
//COMISION 5
// NOMBRE, LEGAJO

PFont fuente, fuenteExterna;

PImage fondo;

int pantalla, tiempo, suma, diametro;

boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;

void setup() {
  size(640, 480);

  fuente = loadFont("fuente1.vlw");
  fuenteExterna = createFont("fuente2.ttf", 48);

  textFont(fuenteExterna);
  textSize(56);

  pantalla = 0;
  tiempo = 0;
  suma = 5;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
  //<, >, <=, >=, ==, !=
  // y... &&, o... ||
  if (pantalla == 0) {

    push();

    background(0);
    text("Trabajo número 2 "+pantalla, 0, height/2);

    pop();
  } else if (pantalla == 1) {

    push();
    background(255);
    fill(0);
    text("Trabajo número 2 "+pantalla, 0, height/2);
    pop();
  } else if (pantalla == 2) {
    background(0, 0, 255);
    text("Trabajo número 2 "+pantalla, 0, height/2);
    if (ultimaPantalla == true) {
      push();
      fill(colorDelBoton);
      rect(width/2, height/2, 300, 50);
      fill(colorDelBotonCircular);
      circle(100, height/2, diametro);
      textSize(48);
      fill(0);
      text("Reiniciar", width/2, height/2+48);
      pop();
    }
  } else {
    background(255, 0, 0);
    text("NOS PASAMOS"+pantalla, 0, height/2);
  }

  rect(0, 0, tiempo, height/10);

  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo  + suma;
  }

  if (tiempo >= 300 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    }
  }
  println(frameCount, tiempo);
}

void mouseClicked() {
  //pantalla++;
  //rect(width/2, height/2, 300, 50);
  if (ultimaPantalla == true) {

    ///BOTON RECTANGULAR:
    if (mouseX > width/2 && mouseX < width/2 + 300 &&
      mouseY > height/2 && mouseY < height/2 + 50) {
      pantalla = 0;
      tiempo = 0;
      suma = 5;
      ultimaPantalla = false;
    }

    ///BOTON CIRCULAR:

    // COMPARMOS LA DISTANCIA
    // ENTRE EL CENTRO DEL CIRCULO
    // Y NUESTRO MOUSEX, MOUSEY
    if (dist(100, height/2, mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 5;
      ultimaPantalla = false;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {
    //CONDICION PARA BOTÓN RECTANGULAR
    if (mouseX > width/2 && mouseX < width/2 + 300 &&
      mouseY > height/2 && mouseY < height/2 + 50) {
      colorDelBoton = color(0, 255, 0);
    } else {
      colorDelBoton = color(120, 120, 120);
    }
    //CONDICION PARA BOTÓN CIRCULAR
    if (dist(100, height/2, mouseX, mouseY) < diametro/2) {
        colorDelBotonCircular = color(0, 255, 0);

    } else {
        colorDelBotonCircular = color(120, 120, 120);

    }
  }
}
