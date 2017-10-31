final int nb_square = round(random(5, 50));
final int padding = 100;
int spacing;
int spacing_increment = round(random(5, 15));
int x, y, w, h;
float xOff, yOff;
int range;
int rangeMax = 100;
float[] offset = new float[nb_square]; 

void setup () {
  size(800, 800);

  noFill();
  strokeWeight(1);
  
  for ( int i=0; i<nb_square; i++) {
    offset[i] = random(100);
  }

  x = 0;
  y = 0;
  w = width;
  h = height;

  frameRate(60);
}


void draw () {
  background(255);

  spacing = 0;

  for ( int i=0; i<nb_square; i++) {
    // Update
    offset[i] += 0.03;
    spacing += spacing_increment;

    range = (int) map(mouseX, 0, width, 0, rangeMax);    
    float noiseX = map(noise(offset[i]), 0, 1, -range, range);
    float noiseY = map(noise(offset[i]+100), 0, 1, -range, range);

    // Display

    rect(x + padding + spacing + noiseX, 
      y + padding + spacing + noiseY, 
      w - (padding*2) - (spacing*2), 
      h - (padding*2) - (spacing*2));
  }
}

void mousePressed() {
  saveFrame("./images/frame-######.png"); 
}