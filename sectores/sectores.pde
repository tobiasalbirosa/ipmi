int cantidad = 30;
int lado;
void setup() {

  size(600, 600);
  lado = width/cantidad;
  rectMode(CENTER);
}

void draw() {
  background(0);
  for (int i = 0; i < cantidad; i++) {
    for (int j = 0; j < cantidad; j++) {
      push();
      translate(lado/2, lado/2);
      fill(255);
      if (i*lado < width/2 && j * lado < height/2) {
        fill(255, 0, 0);
        triangle(i*lado, j * lado, i*lado + lado, j * lado, i*lado, j * lado);
      }
      if ( (i + j) % 2 != 0) {
        ellipse(i*lado, j * lado, lado, lado);
      } else {
        rect(i*lado, j * lado, lado, lado);
      }
      pop();
      println((i + j) % 2);
    }
  }
}
