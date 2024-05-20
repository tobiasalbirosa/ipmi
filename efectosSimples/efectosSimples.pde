PImage fondo, imagen1, imagen2, imagen3;
PFont fuente;
int pantalla, tiempo, diametro;

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
  tiempo = 0;
  pantalla = 0;
  diametro = width/10;
}

void draw() {
  background(0);
  if (pantalla == 0) {
    if (mouseX <= 255) {
      //TINT PUEDE HACER VARIAR DE 0 A 255 LA OPACIDAD DE LAS IMAGENES
      tint(mouseX);
    }
    image(fondo, 0, 0, width, height);
    push();
    rect(0, height/2, width, height/5);
    fill(0);
    text(" PATORUZITO ES UNA HISTORIETA ARGENTINA \n CREADA POR Dante Quinterno", 0, height/2 + 10);
    pop();
  }
  if (pantalla == 1) {
    image(imagen1, mouseX, 0, width, height);
    push();
    text("Sus personajes principales, son: ", 0, 0);
    text("Patoruzito y Pamperito: ", 0, 48);
    pop();
  }
  if (pantalla == 2) {
    image(imagen2, 0, 0, width, height);
    push();
    //El segundo valor de fill, da opacidad de 0 a 255
    fill(0, mouseY);
    text("Su primo Isidorito", 0, mouseY);
    pop();

    push();
    circle(width/2, height/2, diametro);
    fill(0);
    textSize(12);
    textAlign(CENTER, CENTER);

    text("Reiniciar", width/2, height/2 );
    pop();
  }
  tiempo++;
  if (tiempo >= 255) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    }
  }
}
void mouseClicked() {
  //pantalla++;
  if (pantalla > 2) {
    pantalla = 0;
  }
  //USAMOS DIST QUE
  //MIDE LA DISTANCIA
  //ENTRE 2 PUTNOS (X1,Y1, X2,Y2)
  // ----SI ES MENOR QUE EL RADIO DEL CIRCULO:
  //      REINICIA
  if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
