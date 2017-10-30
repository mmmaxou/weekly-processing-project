int cols, rows;
int divider = 5;
Cube[][] cubes = new Cube[divider][divider];

void setup () {
  size(1000, 1000);
  background(0);
  cols = width/divider;
  rows = height/divider;

  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      cubes[x][y] = new Cube(x*divider, y*divider, divider);
    }
  }
}


void draw () {
  for (int x=0; x < cubes.length; x++) {
    for (int y=0; y < cubes[x].length; y++) {
      cubes[x][y].show();
    }
  }
}