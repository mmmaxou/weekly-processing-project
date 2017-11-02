

int spacing=30;
int actualRandomSeed = 1000;
boolean isRecording = false;


void setup()
{
  size(610, 600);
  frameRate(60);
}

void draw() {
  background(255);
  textAlign(CENTER);

  strokeWeight(0);
  actualRandomSeed++;
  randomSeed(actualRandomSeed);

  for (int i=0; i<10; i++) {   
    //int randomcircle = round(frameCount*2 + (i *  50)) % 320 + 20;
    int randomcircle = int(cos(i + (frameCount / TWO_PI )) * 160) + 180;
    int size = i*60;
    if (size%120==0) {
      fill(29, 30, 92);
    } else {
      fill(0, 0, 0);
    }


    strokeWeight(0);
    rect(size+spacing, 100, 8, randomcircle);
    rect(size+spacing, (randomcircle+40+100), 8, (600-randomcircle-220));



    if (size%120==0) {
      stroke(29, 30, 92);
    } else {
      stroke(0, 0, 0);
    }
    noFill();
    strokeWeight(8);

    int arrondi = 45;
    arc((size+spacing+4), (randomcircle+120), arrondi, arrondi, PI+(PI/2), PI+(3*(PI)/2), OPEN);
  }
  if ( isRecording )
    //saveFrame("./video/frame-########.png");
}



void mousePressed()
{
  isRecording = !isRecording;
}