void setup() {
  size(600,600);
  background(0);
  
  for (int y = height; y >= 0; y -= 28) {
    for (int x = 0; x <= width; x += 28) {
      scale (x, y);
    }
  }
}

void scale(int x, int y) {
  int scaleSize = 20;
  int inColor = 20; 
  
  strokeWeight(0);
  
  for (int i = 0; i < 6; i++) {
    stroke(inColor);
    fill(inColor);
    ellipse(x, y, 2 * scaleSize, scaleSize);
    triangle(x - scaleSize, y, x + scaleSize, y, x, y + 2 * scaleSize);
    scaleSize -= 3;
    inColor += 40;
  }
}
