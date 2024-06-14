void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  noStroke();
  if(devolverValor(mouseY)){
    background(42, 134, map(mouseY,height/2, height, 100,255));

  } else {
  
    background(42, 134, 229);
}
  for (int j = 0; j < 3; j++) {

    if (j == 0) {

      for (int i = 0; i < 90; i++) {
        fill(200, 200, 255);
        rect(10, (4 * i) + height/20, width-width/20, 2);
      }
    } else if (j == 1) {
      for (int i = 15; i < 85; i++) {
        fill(0);
        rect(width/8, (4 * i) + 1, width-width/4, 2);
      }
    } else if (j == 2) {
      for (int i = 15; i < 85; i++) {
        fill(255, 255, 255);
        rect(width/4, (4 * i), width/2, 2);
      }
      for (int i = 300; i < width-width/12; i++) {
        stroke(0, map(i, 300, width-width/12, 255, 0));
        line(i, 60, i, height-60);
      }
    }
  }
}

boolean devolverValor(float mY){
   if(mY > height/2){
       return true;

   }else {
          return false;
   }
}
