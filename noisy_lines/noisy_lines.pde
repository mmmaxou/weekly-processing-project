int nb_lines = 60;
int nb_segments = 100;
int padding = 100;
int padding_big = 250;
int range = 10;
float horizontal_spacing, vertical_spacing;
float horizontal_spacing_big, vertical_spacing_big;
int horizontal_divider = 3;

void setup () {
  size(1000, 1000);

  horizontal_spacing = (width - (padding*2)) / nb_lines;
  vertical_spacing = (height - (padding*2)) / nb_segments;
  
  horizontal_spacing_big = (width - (padding_big*2)) / nb_lines;
  vertical_spacing_big = (height - (padding_big*2)) / nb_segments;
  
  strokeWeight(1);  
}

void drawVertical() {
  
  padding = round(map(mouseX, 0, width, 0, 300));
  horizontal_spacing = (width - (padding*2)) / nb_lines;
  vertical_spacing = (height - (padding*2)) / nb_segments;

  int x1, y1, x2, y2, base_x;
  for ( int i=0; i<=nb_lines; i++) {

    base_x = round(padding + (horizontal_spacing * i));
    y1 = padding;
    
    x2 = x1 = base_x;
    x1 += random(-range, range);
    y2 = y1;

    for ( int j=0; j<=nb_segments; j++) {

      // Add random values
      x2 += random(-range, range);
      y2 += vertical_spacing;
      
      // Constrain
      x2 = constrain(x2, base_x-range, base_x+range);

      line(x1, y1, x2, y2);

      x1=x2;
      y1=y2;
      
    }
  }
  
}


void drawHorizontal() {

  int x1, y1, x2, y2, base_y;
  for ( int i=0; i<nb_lines; i++) {

    x1 = mouseX - padding_big;
    base_y = round(mouseY - padding_big + (horizontal_spacing_big * i));
    
    x2 = x1;
    y2 = y1 = base_y;
    y1 += random(-range, range);

    for ( int j=0; j<nb_segments; j++) {

      // Add random values
      x2 += vertical_spacing_big;
      y2 += random(-range, range);
      
      // Constrain
      y2 = constrain(y2, base_y-range, base_y+range);

      line(x1, y1, x2, y2);

      x1=x2;
      y1=y2;
      
    }
  }
  

}

void mousePressed() {
 saveFrame("./images/render$.png");
}

void draw () {
  
  background(255);  
  drawVertical();
  drawHorizontal();
  
}