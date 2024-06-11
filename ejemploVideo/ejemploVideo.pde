boolean verdaderoOFalso;
float numeroConDecimales, valorDeMap, tam;
char caracter;
String texto;
color colorPersonalizado;
PImage fondo;
PFont fuente, fuente2;
int pantalla, contador, numeroEntero, velocidad, cantidad;

void setup() {
  size(1000, 1000);
  strokeWeight(3);
  numeroEntero = width;
  numeroConDecimales = 0.5;
  caracter = '+';
  texto = "Hola";
  colorPersonalizado = color(0, 255, 0);
  fondo = loadImage("fondo.png");
  fuente = createFont("amigh.ttf", 12);
  fuente2 = loadFont("carlito.vlw");
  textFont(fuente);
  textSize(200);
  pantalla = 3;
  contador = 0;
  velocidad= 3;
  cantidad = 2;
  tam = width/cantidad;
  rectMode(CENTER);
}

void draw() {
  pantallas();
}


void keyPressed() {
  println(key);
  //char

  if (key == caracter) {
    if (pantalla < 3) {
      pantalla++;
    } else {
      pantalla = 0;
    }
  }
}
