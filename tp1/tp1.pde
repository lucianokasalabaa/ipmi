// TP2 Luciano Kasalaba 119059/2
// Comision2

PImage miImagen;


void setup(){
size (800,400); 
miImagen = loadImage("pelota 1.jpg");
textSize(50);
}

void draw(){
  background(150);
  fill(147, 101, 58);
  image(miImagen, 0, 0,400,400);
  ellipse(600, 200, 300, 250);
  stroke(80);
  strokeWeight(4);
  line(450, 50, 750, 50);
  line(450, 350, 750, 350);
  stroke(4);
  line(510, 100, 690, 100);
  line(450, 200, 750,200);
  fill(0);
  text("SPALDING.", 490, 150);
  text("TF-ELITE", 495,250);

}
