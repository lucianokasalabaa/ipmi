// TP3 Luciano Kasalaba 119059/2
// Comision 2
//https://youtu.be/9UQfG3tABfo

PImage img;
int cantX = 2;
int cantY = 2;
color colorRect1 = 255;
color colorRect2 = 0;

void setup() {
  size(800, 400);
  img = loadImage("imagen11.png");
  rectMode(CENTER);
}

void draw() {
  background(0);
  image(img, 0, 0, 400, 400);
  for (int x = 0; x < cantX; x++) {
    for (int y = 0; y < cantY; y++) {
      dibujarRect(y, x);
      dibujarRectMedio();
    }
  }
}
void dibujarRect(int posY, int posX) {
  for (int i = 3; i > 0; i--) {
   fill(calcularColor(i));
    rect(490 + posX * 190, 105 + posY * 190, 55 * i, 55 * i);
  }
}
void dibujarRectMedio() {
  for (int i = 5; i > 0; i--) {
    if (i % 2 == 0) {
      fill(colorRect1);
    } else {
      fill(colorRect2);
    }
    rect(580, 200, 42 * i, 42 * i);
  }
}
color calcularColor(int i) {
  if (i % 2 == 0) {
    return colorRect2;
  } else {
    return colorRect1;
  }
}
void mousePressed() {
  colorRect1 = color(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255), 0);
  colorRect2 = color(map(mouseX, 0, width, 255, 0), map(mouseY, 0, height, 255, 0), 255);
}
void keyPressed() {
  colorRect1 = 255;
  colorRect2 = 0;
}
