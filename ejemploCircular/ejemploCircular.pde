int cantidad = 10;
int radio = 100;
float mitad;

void setup() {
  size(600, 600);
  mitad = width/2;
  radio = width/cantidad;
}
void draw() {
    for (int i = cantidad; i > 0; i--) {
      fill(0, i * cantidad * 2, 0);
      circle(width/2, height/2, i * map(mouseX, 0, width, radio/2, radio));
    }
}
