/** 2ºproyecto Processing
 */

void setup() {
  //size(500, 500, P3D);
  fullScreen(P3D, 2);//pantalla completa
  background(255);//color de fondo
  //noStroke();//quita los bordes
  frameRate(10);
}


void draw() {
  if (mouseButton == LEFT) {
    dibujaCubo();
  } else if(mouseButton == RIGHT) {
    clear();
    background(255);//color de fondo
  }

}


//función
void dibujaCubo() {
  translate(width/2, height/2, 0);
  rotateY(mouseX);
  rotateX(mouseY);
  noFill();
  box(260, 280, 200);
}
