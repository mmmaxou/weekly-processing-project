final int HORIZONTAL = 0;
final int VERTICAL = 1;

class Cube {
  PVector pos;
  int w, h;
  int padding = 10;
  int nb_lines;
  int orientation;

  Cube (int x, int y, int w, int h, int orientation) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;
    this.orientation = orientation;

    // Each cube is made of lines
    // nb_lines is always an odd number
    nb_lines = ((int) random(2, 6)) * 2 + 1;

    // Each cube is either horizontal or vertical
    // I use constant for easier access
    /*
    
    This method is random but the lines in the painting are VERT then HORI
    if ( random(100) > 50 ) {
      orientation = HORIZONTAL;
    } else {
      orientation = VERTICAL;
    }
    */
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
    
    drawCenterLines();
    drawBorderLines();
    
    
    stroke(250,0,150);
    //rect(pos.x, pos.y, w, h);
  }
  
  void drawBorderLines() {
    
    // Border lines
    int line_spacement_h = (h-(this.padding*2)) / nb_lines;
    int line_spacement_w = (w-(this.padding*2)) / nb_lines; 
    for ( int i=0; i<=nb_lines; i++ ) {
      if ( orientation == HORIZONTAL ) {
        int x1 = (int) pos.x + padding;
        int y1 = (int) pos.y + (line_spacement_h * i) + padding;
        int x2 = x1 + w - (padding*2);
        int y2 = y1;        
        line(x1,y1,x2,y2);
      } else {
        
      }     
    }
  }
  
  void drawCenterLines() {
    
    // Center lines
    int line_spacement_h = (h-(this.padding*2)) / nb_lines;
    int line_spacement_w = (w-(this.padding*2)) / nb_lines; 
    for ( int i=0; i<=nb_lines; i++ ) {
      if ( orientation == HORIZONTAL ) {
        int x1 = (int) pos.x + padding;
        int y1 = (int) pos.y + (line_spacement_h * i) + padding;
        int x2 = x1 + w - (padding*2);
        int y2 = y1;        
        line(x1,y1,x2,y2);
      } else {
        int x1 = (int) pos.x + (line_spacement_w * i) + padding;
        int y1 = (int) pos.y + padding;
        int x2 = x1;
        int y2 = y1 + h - (padding*2);        
        line(x1,y1,x2,y2);
      }      
    }
  }
}