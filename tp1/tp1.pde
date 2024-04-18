PImage cereza;
int colorDeFondo = 255;
/*
ENTEROS : int
 FLOTANTES : float
 
 */
void setup() {
  size(800, 400);
  background(colorDeFondo);
  rectMode(CENTER);
  //imageMode(CENTER);
  cereza = loadImage("cereza.png");
  //frameRate(0.1);
}

void draw() {
  // X, Y, TAM
  //mouseX,mouseY

  background(colorDeFondo);
  // circle(mouseX, mouseY, 300);
  // rect(mouseX, mouseY, 150,50);
  image(cereza, 0, 0, 400, 400);

  ////////////////
  // x1, y1, x2, y2
  stroke(0, 120, 0);
  strokeWeight(5);
  line(556, 206, 626, 21);
  line(626, 26, 673, 192);

  fill(200, 0, 0);
  noStroke();
  circle(510, 280, 180);
  circle(640, 280, 180);
}


void mouseClicked() {
  println(mouseX, mouseY);
}
