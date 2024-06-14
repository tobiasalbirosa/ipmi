void setup() {
  colorMode(HSB);
  size(255, 255);
  noStroke();
  ////// R, G, B
  // HUE, SATURACION,  BRILLO
}
void draw() {
  for (int i = 0; i < 10; i++) {
    fill(80,255/(i+1),255/(i+1));
    println(mouseX);
    circle(width/2, i*height/10, 50);
  }
}
