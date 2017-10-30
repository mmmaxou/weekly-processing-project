class Cube {
  PVector pos;
  int r;
  int padding = 5;

  Cube (int x, int y, int r) {
    pos = new PVector(x, y);
    this.r = r;
  }

  void show () {
    fill(255);
    stroke(0);
    rect(pos.x+padding, pos.y+padding, r-padding, r-padding);
  }
}