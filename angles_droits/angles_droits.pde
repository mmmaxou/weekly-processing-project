int cols, rows;
int divider = 50;
Cube[][] cubes;

void setup () {
  size(1000, 1000);
  cols = width/divider;
  rows = height/divider;
  cubes = new Cube[cols][rows];

  frameRate(5);
}


void draw () {
  divider--;
  cols = width/divider;
  rows = height/divider;
  cubes = new Cube[cols][rows];
  background(255);
  
  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      cubes[x][y] = new Cube(x*cols, y*rows, cols, rows, (x+y)%2);
    }
  }
  
  for (int x=0; x < cubes.length; x++) {
    for (int y=0; y < cubes[x].length; y++) {
      cubes[x][y].update();
      cubes[x][y].show();
    }
  }
}