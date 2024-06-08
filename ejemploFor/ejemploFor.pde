int cantidad  = 5;
float lado;
float radio;
float mitad;
void setup() {
  size(800, 400);
  lado = width/cantidad;
  radio = width/cantidad;
  mitad = width/2;
}

void draw() {


  background(0);
  for(int j = 0; j < 4; j++){
  for (int i = 8; i > 0; i--) {
    // rect(i * lado, i * lado, lado, lado);
    strokeWeight(15);
    stroke(0, i * 255 / cantidad, 0);
     circle(mitad + i * radio/5,j * radio/5, radio/10);
    //circle( mouseX + radio/10 * j, mouseY radio/10 * j, radio / 10 * i);
  }
}
}
void keyPressed() {
  println(keyCode);
  actualizar(key);
}
void actualizar(char tecla) {
  if (tecla ==  '+') {
    cantidad++;
    lado = width / cantidad;
  } else if (tecla ==  '-' && cantidad > 1) {
    cantidad--;
    lado = width / cantidad;
  }
}
