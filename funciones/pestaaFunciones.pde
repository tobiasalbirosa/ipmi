void capas (int x, int y, float tam, int linea) {
 
 push();
  strokeWeight(linea);
  circle(x, y, tam);
 pop();
  
}

void dibujar(int  cantidad) {

  if(devolverValor(cantidad)){
  
  } else {
      cantidadDeCiclos = 0;
  }
 // rect(cantidadDeCiclosMapeados, random(height), 50, 50);
rect(random(cantidadDeCiclosMapeados), random(cantidadDeCiclosMapeados), 50, 50);

}

boolean devolverValor (int cant) {
  if (cant > 100) {
    return false;
  } else {
    return true;
  }
}


void dibujoConCicloFor(){

    for(int i = 0; i < 100;i++){
     println(i);
     circle(map(mouseX, 0, width, 0, 10) * i,10 * i,height/4);
    }
}
