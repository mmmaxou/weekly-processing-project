final int HORIZONTAL = 0;
final int VERTICAL = 1;

class Cube {
  PVector pos;
  int w, h;
  int padding = 5;
  int nb_lines;
  int orientation;

  Cube (int x, int y, int w, int h) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;

    // Each cube is made of lines
    // nb_lines is always an odd number
    nb_lines = ((int) random(2, 6)) * 2 + 1;

    // Each cube is either horizontal or vertical
    // I use constant for easier access
    if ( random(100) > 50 ) {
      orientation = HORIZONTAL;
    } else {
      orientation = VERTICAL;
    }
  }

  void update () {
    /*
    this.padding = (int) map(mouseX, 0, width, 0, 50);
    */
  }

  void show () {
    noFill();
    stroke(0);
    strokeWeight(2);
    
    int line_spacement;
    for ( int i=0; i<nb_lines; i++ ) {
      if ( orientation == HORIZONTAL ) {
        line_spacement = h / nb_lines;
        int x1 = (int) pos.x;
        int y1 = (int) pos.y + (line_spacement * i);
        int x2 = x1 + w;
        int y2 = y1;        
        line(x1,y1,x2,y2);
      } else {
        line_spacement = w / nb_lines;        
        int x1 = (int) pos.x + (line_spacement * i);
        int y1 = (int) pos.y;
        int x2 = x1;
        int y2 = y1 + h;        
        line(x1,y1,x2,y2);
        
      }      
    }
    
    //rect(pos.x+padding, pos.y+padding, w-(padding*2), h-(padding*2));
    
  }
}