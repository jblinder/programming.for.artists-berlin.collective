int[] xCoords;
Ball[] ballArray;
ArrayList balls;

void setup(){
  size(800,600);
  balls = new ArrayList();
  xCoords = new int[400];
  ballArray  = new Ball[50];
  
  for (int i = 0; i < xCoords.length; i++) {
      xCoords[i] = i * 20; 
  }

}

void draw(){
  background(0,0,0);
  /*
  for loop notation: 
    for (index ; condition; if condition is true increment index) {
      do something 
    }
  */
  stroke(255);
  
   for (int i = 0; i < balls.size()-1; i++) {
      Ball c1 = (Ball) balls.get(i);
      Ball c2 = (Ball) balls.get(i+1);  
      c2.radius = dist(c1.x, c1.y, c2.x, c2.y);
      c1.draw();
      stroke(255);
      line(c1.x, c1.y, c2.x, c2.y);   
  }
 
}

void mouseDragged(){
    //we create a temporary ball object
    Ball c = new Ball(mouseX, mouseY);
    //then we set it's properties
    c.colorBlue = random(0,255); 
    c.colorGreen   = random(0,255);
    //finally we add it to our arrayList  
    balls.add(c);
    
    //if we reach 20 balls, remove the first one in the list
    if ( balls.size() == 20 ) {
      balls.remove(0);
    }  
}
