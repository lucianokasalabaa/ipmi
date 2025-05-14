// TP2 Luciano Kasalaba 119059/2
// Comision 2
String texto1, texto2, texto3;
PFont fuente;
PImage imagen1, imagen2, imagen3;
float posX, posY;
int miVariable = 1000;
int estado, contador;
float buttonX, buttonY, buttonWidth, buttonHeight;
color colorBoton = color(200);

void setup() {
  size(640, 480);

  // Cargar imágenes
  imagen1 = loadImage("imagen 1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

  // Cargar fuente estándar para evitar error
  fuente = createFont("Arial Black", 40);
  textFont(fuente);

  texto1 = "Fortnite Battle Royale\nes un juego de acción en línea,\nde tipo multijugador,\ndonde gana el último en pie.";
  texto2 = "Los jugadores exploran,\nconstruyen estructuras,\ny pelean con otros\nen un enorme mapa.";
  texto3 = "¡El objetivo:\nser el mejor del mundo!";

  textAlign(CENTER, CENTER);  
  estado = 1;
  contador = 10;
  posX = width / 2;  
  posY = 320;

  buttonWidth = 100;
  buttonHeight = 50;
  buttonX = width - buttonWidth - 20;
  buttonY = height - buttonHeight - 20;
}

void draw() {
  background(200);
  miVariable = frameCount;

  if (estado == 1) {
    if (imagen1 != null) {
      image(imagen1, 0, 0, width, height);  
    }
    fill(255);
    text(texto1, posX, posY); 
    contador++;
    if (contador >= 120) {
      estado++;
      contador = 0;
    }

  } else if (estado == 2) {
    if (imagen2 != null) {
      image(imagen2, 0, 0, width, height);
    }
    fill(255);
    text(texto2, posX, posY);
    posX -= 0.5; // Hacer que el texto se mueva más lentamente
    if (posX < -textWidth(texto2)) {  // Verificar si el texto ha salido de la pantalla
      estado = 3;
      posX = width / 2;  // Reiniciar la posición al centro
    }

  } else if (estado == 3) {
    if (imagen2 != null) {
      image(imagen2, 0, 0, width, height); 
    }
    fill(255);
    text(texto2, posX, posY);  
    contador++;
    if (contador >= 120) {
      estado++;
      contador = 0;
    }

  } else if (estado == 4) {
    if (imagen3 != null) {
      image(imagen3, 0, 0, width, height);  
    }
    fill(255);
    text(texto3, posX, posY);  
    posX -= 0.5;  // Hacer que el texto se mueva más lentamente
    if (posX < -textWidth(texto3)) {  
      estado = 5;
      posX = width / 2;  
    }

  } else if (estado == 5) {
    if (imagen3 != null) {
      image(imagen3, 0, 0, width, height);
    }
    fill(255);
    text(texto3, posX, posY);
  }

  // Botón de reinicio
  fill(colorBoton);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);
}

void mousePressed() {
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth &&
      mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    estado = 1;
    contador = 0;
    posX = width / 2;  
  } else {
    estado++;
    if (estado > 5) {
      estado = 1;
    }
    contador = 0;
    posX = width / 2;  
  }
}
