int cantidad;
float lado;
void setup() {
  size(800, 800);
  cantidad = 8;
  lado = width/cantidad;
  textSize(28);
}

void draw() {
  for (int x = 0; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {
      if (x % 2 == 0 && y  % 2 != 0) {
        fill(0);
      } else {
        fill(255);
      }
      if (x % 2 != 0 && y  % 2 == 0) {
         fill(0);
      }
      rect(x * lado, y * lado, lado, lado);
    //  fill(0);
   //   text("x: "+x+", y:"+y, x * lado, y * lado + lado / 2);
    }
  }
}
