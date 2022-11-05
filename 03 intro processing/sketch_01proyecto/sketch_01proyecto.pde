/** 1ºproyecto Processing
* Tutorial completo puedes ver aquí  https://processing.org/tutorials/gettingstarted
* se agregaron más funcionalidades para explicar las funciones
 */
 
void setup() {
  size(500, 500);
  //fullScreen(2);//pantalla completa 
  //background(0);//color de fondo
  //noStroke();//quita los bordes
  frameRate(30);//cuadros por segundo
}


void draw() {
  if (mousePressed) {
    fill(#45F5E5);
  } else {
    fill(#F545EC);
  }
  dibujaCirculo();
}


//función 
void dibujaCirculo(){
  ellipse(mouseX, mouseY, 80, 70);
}
