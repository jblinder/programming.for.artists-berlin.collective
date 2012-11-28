void setup(){
    size(800,600);
    background(0,0,0);
}

void draw(){
  background(0,0,0);
   for (int i = 0; i < width; i ++){
      for (int j = 0; j < height; j++) {
         if ( i % 20 == 0 && j % 20 == 0) {
           float radius = random(15,20);
           fill(random(0,255));
          ellipse(i,j,radius,radius);
         }
      } 
   }
}
