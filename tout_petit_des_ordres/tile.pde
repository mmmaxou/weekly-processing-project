class Tile {
  PVector pos;
  int w, h;
  int padding = 10;
  int range;
  int rangeMax = 100;
  float xOff, yOff;

  Tile (int x, int y, int w, int h) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;
    xOff = random(100);
    yOff = random(100);
  }

  void update () {
    xOff += 0.01;
    yOff += 0.01;
    range = (int) map(mouseX, 0, width, 0, rangeMax);
  }

  void show () {
    noFill();
    
    colorMode(HSB, 100);    
    stroke(map(mouseY, 0, height, 0, 100), 75, 75);
    strokeWeight(2);
    
    float noiseX = map(noise(xOff), 0, 1, -range, range);
    float noiseY = map(noise(yOff), 0, 1, -range, range);
    float x1 = round(pos.x + padding) + noiseX;
    float y1 = round(pos.y + padding) + noiseY;
    int wid = w - (padding*2);
    int hei = h - (padding*2);    
    
    rect(x1, y1, wid, hei);
  }
}