int cantidad;
float lado;
PImage victorvasarely;


void setup() {


  size(800, 400);

  //victorvasarely = loadImage("vasarely.png");
  cantidad = 20;
  lado = width/cantidad;
  rectMode(CENTER);
}


void draw() {

  background(255, 255, 255);
  //image(victorvasarely, 0, 0, 400, 400);

  /*
   println("X:");
   println(mouseX);
   println("Y:");
   println(mouseY);
   */

  for (int x = cantidad/2; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {
      
      push();
      translate(x * lado, y * lado);
      rect(lado/2, lado/2, lado, lado);
      pop();
      
      push();
      translate(x * lado + lado/4, y * lado- lado/10);
      rotate(map(mouseX, 0, width, 0, PI*2));
      ellipse(lado/2, lado/2, lado/2, lado);
      pop();
    }
  }
}
