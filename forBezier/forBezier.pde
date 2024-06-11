int contador, cantidad, pos;
float lado;
void setup() {
  size(1000, 1000);
  cantidad = 6;
  lado = width/cantidad;
}

void draw() {
  contador=+10;
  pos+=1;
  fill(255, 10);
  rect(0, 0, width, height);
  if (pos > height) {
    pos = 0;
  }
  for (int j = 0; j < cantidad; j++) {

    for (int i = 0; i < cantidad; i++) {
      push();
      noFill();
      stroke(0, 10);
      translate(i * lado, j * lado );
      if (i % 3 != 0) {
        bezier(0, pos, mouseX, mouseY, mouseX, mouseY, lado, lado-pos);
      } else {
        bezier(0, -pos, mouseX, mouseY, mouseX, mouseY, lado, lado+pos);
      }
      pop();
    }
  }
}
