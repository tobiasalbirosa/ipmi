PImage fondo, imagen1, imagen2, imagen3;
PFont fuente;
int pantalla = 0;

void setup() {
  size(640, 480);
  fondo = loadImage("fondo.jpeg");
  //fuente = loadFont("Noto-48.vlw");
  fuente = createFont("Stencilia-A.ttf", 48);
  textFont(fuente);
  textSize(24);
  textAlign(LEFT, TOP);
  imagen1 = loadImage("imagen1.png");
  imagen2 = loadImage("imagen2.png");
  imagen3 = loadImage("imagen3.png");
}

void draw() {

  if (pantalla == 0) {
    image(fondo, 0, 0, width, height);

    push();
    rect(0, height/2, width, height/5);
    fill(0);
    text(" PATORUZITO ES UNA HISTORIETA ARGENTINA \n CREADA POR Dante Quinterno", 0, height/2 + 10);
    pop();

    push();
    rect(width/2, height - height/10, width/5, height/5);
    fill(0);
    text(" COMENZAR", width/2, height - height/10 + 10);
    pop();
  }
  if (pantalla == 1) {
    image(imagen1, 0, 0, width, height);

    text("Sus personajes principales, son: ", 0, 0);
    text("Patoruzito y Pamperito: ", 0, 48);
  }
  if (pantalla == 2) {
    push();
    image(imagen2, 0, 0, width, height);
    fill(0);
    text("Su primo Isidorito", 0, 0);
    pop();
  }
  if (pantalla == 3) {
    push();
    image(imagen3, 0, 0, width, height);
    fill(0);
    text("Patoruzito llego al cine en 2004", 0, 0);
    pop();
  }
  if (pantalla == 4) {
    push();
    background(0);
    image(fondo, 0, 0, width, height);
    fill(0);
    text("Gracias", 0, 0);
    pop();
  }
}
void mouseClicked() {
  pantalla++;
  if (pantalla > 4) {
    pantalla = 0;
  }
}
