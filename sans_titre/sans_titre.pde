int spacing=20;
int actualRandomSeed = 1000;
float c = cos(random(0, 90));

float xOff = 0;
float yOff = 100;

void setup()
{
  size(620, 600);
}

void draw() {
  background(255, 255, 255);
  noStroke();
  text("SANS TITRE - Gouache sur Papier de VERA MOLNAR ", 300, 30); 
  translate(width / 2, height / 2);
  randomSeed(actualRandomSeed);
  textAlign(CENTER);

  int surface = 200;
  int max = 8;
  int range = 55;



  for (int i=0; i<max; i++) {

    int divider = round(map (mouseY, 0, height, 0, 100));
    int w = (surface * divider) / 100;
    int h = 200 - w;

    w /= max / (i+1);
    h /= max / (i+1);
    rotate(map(mouseX, 0, width, 0, 3.5));
    pushMatrix();

    float randomX = noise(xOff) * range;
    float randomY = noise(yOff) * range;

    xOff += 0.001;
    yOff += 0.001;

    translate(randomX, randomY);

    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

    rect(0, 0, w, h);
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

    rect(0, 200, w, h);
    popMatrix();
  }
}



void mousePressed()
{
  actualRandomSeed = int(random(10000));
  saveFrame("./images/frame-####.png");
}