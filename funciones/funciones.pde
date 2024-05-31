//FUNCIONES
int cantidadDeCiclos;
float cantidadDeCiclosMapeados;
float cantidadDeCiclosMapeadosColor;
void setup() {

  size(1080, 800);
}

void draw() {
  fill(200,10);
  rect(0,0,width, height);
  //capas(50, 70, 120.5, 15);
  //capas(150, 170, 55.5, 1);
  cantidadDeCiclos++;
  cantidadDeCiclosMapeadosColor= map(cantidadDeCiclos, 0, 100, 0, 255);
  cantidadDeCiclosMapeados = map(cantidadDeCiclos, 0, 100, 0, width);
  dibujar(cantidadDeCiclos);
  
  
  dibujoConCicloFor();
  
  println("Fin de ciclo flor");
}

void mouseClicked() {
}
