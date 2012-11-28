void setup() {
  size(800, 600);
}


void draw() {
}

void mouseMoved() {
  float dx = mouseX - pmouseX;
  float dy = mouseY - pmouseY;
  //using the dist() method is the same as computing the pythagorean theorem
  //ex. float distance = sqrt(dx*dx+dy*dy);
  float distance = dist(mouseX, mouseY, pmouseX, pmouseY); 
  ellipse(mouseX, mouseY, distance, distance);
}

