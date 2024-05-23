int animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto;
String texto1;
void setup() {
  animacion= 0;
  //USAMOS ESTA VARIABLE
  //PARA LIMITAR DESDE EL SETUP
  //CUANTO VA A DURAR LA ANIMACION
  limiteDeAnimacion= 300;
  //DEFINIMOS LA VARIABLE OPACIDAD
  //PORQUE NO NECESITAMOS
  //QUE VALGA MAS DE 255
  opacidad = 0;
  pantalla=1;
  tamTexto= 48;
  size(640, 480);
  textSize(tamTexto);
  //GUARDAMOS NUESTRO TEXTO
  //EN UNA VARIABLE TIPO STRING
  //PODEMOS USAR LA CANTIDAD QUE QUERRAMOS
  texto1 = "Esta es la pantalla: ";
}

void draw() {
  background(0);
  animacion++;

  if (animacion > 300) {
    animacion = 0;
    pantalla++;
    if (pantalla > 4) {
      pantalla = 1;
    }
  }

  if (pantalla == 1) {
    text(texto1+ pantalla, animacion, height/2);
  }

  if (pantalla == 2) {
    text(texto1+ pantalla, 50, animacion);
  }

  if (pantalla == 3) {
    //AQUI UTILIZAMOS
    //LA VARIABLE opacidad

    if (animacion < 255) {
      opacidad = animacion;
    }
    fill(255, opacidad);
    text(texto1+ pantalla, 50, height/2);
  }

  if (pantalla == 4) {
    //AQUI UTILIZAMOS
    //LA VARIABLE tamTexto
    //que hace referencia
    //al tamaño del texto
    if (animacion < 150) {
      if (tamTexto < 72) {
        tamTexto++;
      }
    } else {
      if (tamTexto > 48) {
        tamTexto--;
      }
    }
    textSize(tamTexto);

    fill(255, opacidad);
    text(texto1+ pantalla, 5, height/2);
  }
}
