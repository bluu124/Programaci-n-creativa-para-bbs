/* aprenderemos a mapear un controlador midi Usaremos la libreria themidibus para ma
 */
//importa la libreria midibus
import themidibus.*;

//declaración de variables
// MidiBus
MidiBus myBus;
int cc = 0; //nombre de la tecla midi
int value = 90; //valor es entre 0 y 127
int channel = 0; //depende del instrumento 
int pitch = 64;
int velocity = 127;

// variables del controlador
int fondoRojo = 0;
int fondoVerde = 0;
int fondoAzul = 0;



void setup() {
  fullScreen(2);//pantalla completa
  //size(500, 500);

  //themidibus
  MidiBus.list(); //lista en consola tus In/Out midi
  myBus = new MidiBus(this, 1, -1); //"nanoKONTROL2"

}

void draw() {


  ControlChange change = new ControlChange(channel, cc, velocity);
  myBus.sendControllerChange(change); // Send a controllerChange
  //delay(2000);
  
  background(fondoRojo, fondoVerde, fondoAzul);
}


// imprime en consola los cambios
void controllerChange(int channel, int cc, int value) {
  println();
  println("--------");
  println("Channel:"+channel);
  println("CC:"+cc);
  println("Value:"+value);

  // asigna acción por cada boton
  switch(cc) {
  case 16: //controla R del fondo
    fondoRojo = int(map(value, 0, 127, 10, 300));
  case 17: //controla R del fondo
    fondoVerde = int(map(value, 0, 127, 10, 300));
  case 18: //controla R del fondo
    fondoAzul = int(map(value, 0, 127, 10, 300));
  }
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
