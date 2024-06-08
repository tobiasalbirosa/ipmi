boolean variableVerdaderoOFalso;
int numero;
float decimal;
char caracter;
color variableColor;
PImage fondo;
PFont fuenteDesdeProcessing, fuenteExterna;
PShape figura;
int estado;
int contador, posX, posY, velocidad;
float contadorMapeado;
void setup() {
  size(1000, 1000);
  println("FPS:"+ frameRate);
  variableVerdaderoOFalso = true;
  numero = 100;
  decimal = PI;
  caracter = '+';
  variableColor = color(0, 255, 0);
  fondo = loadImage("fondo.jpg");
  fuenteDesdeProcessing = loadFont("arial.vlw");
  fuenteExterna = createFont("amigh.otf", 48);
  textFont(fuenteExterna);
  figura = createShape();
  figura.beginShape();
  figura.vertex(width/2, height/2);
  figura.vertex(width/2 + width/20, height/2 + width/20);
  figura.vertex(width/2 + width/20, width/2 + width/10);
  figura.vertex(width/2 - width/20, width/2 + width/10);
  figura.vertex(width/2 - width/20, height/2+ width/20);
  figura.vertex(width/2, height/2);
  figura.endShape();
  estado = 3;
  contador = 0;
  velocidad = 5;
  posX = width;
  posY = height;
}

void draw() {
  push();
  dibujar(estado);
  pop();
  actualizar();
}
void keyPressed() {
  if (key == caracter && estado == 0) {
    estado = 1;
    contador = 200;
  }
}

void mouseClicked() {
  if (estado == 1) {
    if (dist(mouseX, mouseY, width/4, height/2) <  width/20/2) {
      estado = 0;
      contador = 0;
    }
    rect(width/2, height/2, width/20, width/20);
    if (mouseX > width/2 && mouseX < width/2 + width/20) {
      estado = 2;
      println(estado);
      contador = 0;
    }
  } else if (estado == 2) {
    estado++;
  }
}
