int cols, rows;
int divider = 10;
Cube[][] cubes;

void setup () {
  size(1000, 1000);
  background(255);
  cols = width/divider;
  rows = height/divider;
  cubes = new Cube[cols][rows];
  
  print(cols);
  print(rows);

  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      cubes[x][y] = new Cube(x*cols, y*rows, cols, rows);
    }
  }
}


void draw () {
  for (int x=0; x < cubes.length; x++) {
    for (int y=0; y < cubes[x].length; y++) {
      cubes[x][y].update();
      cubes[x][y].show();
    }
  }
}