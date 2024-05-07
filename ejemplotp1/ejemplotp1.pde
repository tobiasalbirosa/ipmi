//TP1
//Tobías Albirosa
//COM5

// Declaración
PImage zanahoria;

void setup() {
  size(800, 400);
  //Asignación
  zanahoria = loadImage("zanahoria.jpeg");
}


void draw() {
  background(255);
  //Utilización
  // variable de tipo imagen cargada, x, y, tamX, tamY

  image(zanahoria, 0, 0, 400, 400);
  fill(255, 125, 0);
  //noStroke();
  // x,y, x1,y1, x2, y2
  stroke(200,100,0);
  strokeWeight(10);
  triangle(541, 214, 597, 147, 740, 301 );

// ESTO ES EL TRAPECIO NARANJA

  beginShape();

  vertex( 539, 216 );
  vertex( 508, 181 );
  vertex( 558, 152 );
  vertex( 599, 153 );

  endShape();


// ESTOS SON LAS HOJAS:

  fill(0,120,0);
   stroke(0,100,0);

  beginShape();

  vertex( 560, 142 );
  vertex( 535, 73 );
  vertex( 524, 97 );
  vertex( 487, 85 );
  vertex( 468, 101 );
  vertex( 479, 121 );
  vertex( 461, 120 );
  vertex( 453, 129 );
  vertex( 466, 152 );
  vertex( 458, 162 );
  vertex( 463, 175 );
  vertex( 537, 176 );
  
  endShape();
}

void mouseClicked() {
  
  println("vertex(", mouseX+400, ",", mouseY, ");");
  
}
