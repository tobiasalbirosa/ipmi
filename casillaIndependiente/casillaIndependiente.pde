void setup() {
  size(400, 400);
}

void draw() {
  for (int i  = 0; i< 3; i++) {
    for (int j  = 0; j< 3; j++) {
      if (i == 1) {
        rect(i* width/3, j*height/3+50, width/3, height);
      } else {
        rect(i* width/3, j*height/3, width/3, height);
      }
      if( i == 2 && j == 0){
          rect(i* width/3 + 20, j*height/3+50, 20, 20);
      }
    }
  }
}
