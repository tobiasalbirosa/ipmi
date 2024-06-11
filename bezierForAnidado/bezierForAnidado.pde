int lado, cantidad;
float x1, y1, x2, y2, x3, y3, x4, y4, contador, velocidad;
boolean cambiar;
void setup() {
  rectMode(CENTER);
  size(1000, 1000);
  cantidad = 10;
  lado = width/cantidad;
  velocidad = .9;
  colorMode(HSB);
}
void draw() {
  contador+=map(mouseX, 0, width, -20, 20);

  fill(0, 6);
  rect(width/2, height/2, width, height);
  for (int i = 0; i < cantidad; i++) {
    for (int j = 0; j < cantidad; j++) {
      push();
      translate(i * lado + lado/2, j * lado + lado/2);
      rotate(map(contador, 0, width, 0, PI * 2));
      //rect(0, 0, 10, 10);
      if (cambiar) {
        x1 = 0;
        y1 = 0;
        x2 = map(random( 0, lado*lado/cantidad), 0, height, 0, lado);
        y2 =  map(random( 0, lado*lado/cantidad), 0, height, 0, lado);
        x3 =  map(random( 0, lado*lado/cantidad), 0, height, 0, lado);
        y3 =  map(random( 0, lado*lado/cantidad), 0, height, 0, lado);
        x4 = 0;
        y4 = 0;
      }
      stroke(random(200, 220), 255, 255, 100);

      //bezier(x1, y1, x2, x2, x3, y3, x4, y4);
      stroke(255, 20);


      //diferencia
      fill(255, 255, 0);
      ////   arc(0, 0, lado, lado, 0, PI*2-map(mouseX, 0, width, 0, PI/4));
      //   fill(0);
      // circle(-lado/cantidad, -lado/cantidad, lado/10);
      noStroke();
      fill(random(200, 220), 255, 255, 50);
      curve(x2, y2, x1, y1, x3, y3, x4, y4);
      pop();
    }
  }
  
  push();
  noStroke();
  fill(255,20);
  circle(mouseX, mouseY, width/5);
  pop();
}

void mouseClicked() {
  cambiar = !cambiar;
}
