PImage img;
void setup(){
  size(800,400);
  noStroke();
  
  img = loadImage("para-processing.jpg");
} 

void draw(){
  background(30); //fondo oscuro tipo mosaico
   
   // IMAGEN ORIGINAL (izquierda)
  image(img, 0, 0, 400, 400);

  // MOVER DIBUJO A LA DERECHA
  pushMatrix();
  translate(400, 0);

  // ---SECCION IZQUIERDA (ciudad) ---
  fill(150,100,80);
  rect(0,0,200,300); // bloque base

  fill(200,50,50);
  rect(20,50,80,100); // edificio

  fill(80,150,200);
  rect(110,80,60,120); // otro edificio

  // calle
  fill(100);
  rect(0,200,200,100);

  // --- CENTRO (persona grande) ---
  fill(200,100,50); 
  ellipse(350,180,120,150); // cuerpo

  fill(220,180,140);
  ellipse(350,100,60,60); //cabeza

  //brazos
  rect(300,150,40,20);
  rect(360,150,40,20);

  // --- SOL ---
  fill(255, 200, 0);
  ellipse(500, 60, 80, 80);

  // rayos
  for (int i = 0; i < 12; i++) {
    float angle = TWO_PI / 12 * i;
    float x = 500 + cos(angle) * 70;
    float y = 60 + sin(angle) * 70;
    ellipse(x, y, 10, 10);
  }

  // --- BICICLETA ---
  fill(0);
  ellipse(600, 200, 50, 50); // rueda 1
  ellipse(680, 200, 50, 50); // rueda 2

  stroke(0);
  line(600, 200, 650, 170);
  line(650, 170, 680, 200);
  line(650, 170, 630, 200);

  noStroke();

  // ciclista (muy simple)
  fill(50);
  ellipse(650, 140, 30, 30); // cabeza
  rect(640, 150, 20, 30); // cuerpo

  // --- PAREJA A LA DERECHA ---
  fill(255, 180, 180);
  ellipse(780, 140, 40, 60); // persona 1

  fill(200, 120, 120);
  ellipse(820, 140, 40, 60); // persona 2

  // --- CAMINO ---
  fill(120);
  rect(700, 200, 200, 100);

  fill(255);
  for (int i = 0; i < 5; i++) {
    rect(720 + i * 30, 240, 15, 10); // líneas de calle
  }
    popMatrix();
}
