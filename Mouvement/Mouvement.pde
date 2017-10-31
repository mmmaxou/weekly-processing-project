

int spacing=30;
int actualRandomSeed = 1000;


void setup()
{
  size(610, 600);
}

void draw() {
  background(170, 177, 169);
  text("MOUVEMENT de VERA MOLNAR ", 300, 30); 
  textAlign(CENTER);

  strokeWeight(0);
  randomSeed(actualRandomSeed);



  for (int i=0; i<600; i+=60)

  {   
    int randomcircle=int(random(100, 380));
    if (i%120==0) {
      fill(29, 30, 92);
    } else {
      fill(0, 0, 0);
    }

    strokeWeight(0);
    rect(i+spacing, 100, 8, randomcircle);
    rect(i+spacing, (randomcircle+40+100), 8, (600-randomcircle-220));



    if (i%120==0) {
      stroke(29, 30, 92);
    } else {
      stroke(0, 0, 0);
    }
    noFill();
    strokeWeight(8);
    arc((i+spacing+4), (randomcircle+120), 41, 49 , PI+(PI/2), PI+(3*(PI)/2), OPEN);
  }
}



void mousePressed()
{
  actualRandomSeed = int(random(10000));
}