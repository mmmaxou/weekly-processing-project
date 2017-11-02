int spacing=20;
int actualRandomSeed = 1000;
float c = cos(random(0, 90));

void setup()
{
  size(620, 600);
}

void draw() {
  background(255, 255, 255);
  fill(255, 0, 0);
  strokeWeight(0);
  randomSeed(actualRandomSeed);
  text("SANS TITRE - Gouache sur Papier de VERA MOLNAR ", 300, 30); 
  textAlign(CENTER);


  for (int i=0; i<600; i+=50)

  {   
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

    rect(i+spacing, 100, 25, 200);
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

    rect(i+spacing, 300, 25, 200);
  }
}



void mousePressed()
{
  actualRandomSeed = int(random(10000));
}