int cols, rows;
int divider = 15;
Tile[][] tiles;

void setup () {
  size(1000, 1000);
  cols = width/divider;
  rows = height/divider;
  tiles = new Tile[cols][rows];

  frameRate(60);
  background(255);
  
  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      tiles[x][y] = new Tile(x*cols, y*rows, cols, rows);
    }
  }
  
  
}


void draw () {
  
  background(255);
  for (int x=0; x < tiles.length; x++) {
    for (int y=0; y < tiles[x].length; y++) {
      tiles[x][y].update();
      tiles[x][y].show();
    }
  }
  
}