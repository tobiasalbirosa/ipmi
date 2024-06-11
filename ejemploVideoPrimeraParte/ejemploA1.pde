boolean verdaderoOFalso;
int numeroEntero;
float numeroConDecimales;
char caracter;
String texto;
void setup() {
  size(1000, 1000);
  strokeWeight(3);
  numeroEntero = 100;
  numeroConDecimales = 0.5;
  caracter = '+';
  texto = "Hola"
}

void draw() {
  verdaderoOFalso = true;
  //0-255 R G B
  background(255, 255, 255);
  /*
  push();
   fill(0, 255, 0);
   stroke(255, 0, 0);
   rect(20, 20, 20, 20);
   pop();
   
   quad(150, 20, 170, 20, 190, 40, 130, 40);
   circle(mouseX, mouseY, width/10);
   ellipse(200, 200, 100, 50);
   //x1, y1, x2, y2
   line(400, 200, 400, 100);
   triangle(width, height, width, height/2, width/2, height);
   point(500, 500);
   push();
   fill(0,mouseY,0);
   beginShape();
   
   vertex(400, 400);
   vertex(440, 440);
   vertex(440, 480);
   vertex(400, 480);
   vertex(400, 400);
   
   endShape();
   pop();
   */

  // println(frameCount);
  /*
    println(mouseX, mouseY);
   println(frameRate);
   println(width, height);
   */
  /*

   
   
   
   
   
   
   
   */
  //arc
  //bezier
  //curve
  fill(0, 255, 0);
  //noStroke();
  //curve

  arc(200, 200, 200, 200, 0, PI);
  bezier(300, 400, 400, 400, 300, 500, 400, 500);
  curve(300, 400, 400, 400, 300, 500, 400, 500);


  println(verdaderoOFalso);
}
