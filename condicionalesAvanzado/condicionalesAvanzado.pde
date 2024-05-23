int segundos, pantalla, animacion;

void setup() {
  size(640, 480);
  segundos = 0;
  animacion = 0;
  textSize(32);
}

void draw() {

  background(0);

  //ESTA ES UNA MANERA
  //DE CONTAR SEGUNDOS
  //Y REINICIAR 
  //SIN REINICIAR FRAMECOUNT
  if (frameCount % 60 == 0) {
    segundos++;
    if (segundos > 3) {
      segundos = 0;
      if (pantalla != 3) {
        pantalla++;
      }
    }
  }
  
  //PODEMOS UTILIZAR LOS SEGUNDOS
  //PARA QUE NUESTRA VARIABLE SE MODIFIQUE
  if (segundos < 2) {
    animacion++;
  } else {
    animacion--;
  }
  
  //ANIMACION BASADA EN LOS SEGUNDOS QUE CONTAMOS
  rect(50, 50, 100*segundos, 50);

  //ANIMACION BASADA EN VARIABLE
  rect(50, 150, animacion, 50);

  //TEXTO QUE NOS DIBUJA
  text(pantalla, width/2, height/2);
  //DIBUJAMOS LA ULTIMA PANTALLA
  if (pantalla == 3) {
    rect(width/2, height/2, 100, 100);
  }
}
