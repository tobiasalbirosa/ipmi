//VARIABLES

//Declaración
int numeroEntero;
int numeroEntero0;

float numeroFlotante;

String texto;
String texto1;
String texto2;
void setup() {
  // POR DEFECTO
  // WIDTH, HEIGHT = 40
  size(640, 480);
  //Asignación
  numeroEntero = 0;
  numeroEntero0 = 50;

  texto = "Esto es mouseX: ";
  texto1 = "frameCount: ";
  texto2 = "frameRate: ";

  textSize(144);

  frameRate(15);
}

void draw() {

  background(120);

  push();
  textSize(144);
  fill(0);
  text(numeroEntero, width/2, height/2);
  pop();

//  text("Hola", 250, 250);

  numeroEntero  = numeroEntero + numeroEntero0;
  //width / height
  // +. -, /, *

 // rect(0, 0, frameCount, frameCount);

  println("//////////////");
  println(texto+mouseX);
  println(texto1+frameCount);
  println(texto2+frameRate);
}

void mouseClicked() {

  numeroEntero = 0;
  
}
