class Car {
   int x;
   int y;
   float counter; 
   float rate;  
   float r;
   float g;
   float b;
   float w;
      

   Car(int xPos, int yPos) {
     x = xPos;
     y = yPos;
     counter = 0;
     rate = random(.5, 3);
     r = random(0,255);
     g = random(0,255);
     b = random(0,255);
     float widthScale = map(rate, .5, 3, 100,12); 
     w = widthScale;
   }
   
   void draw(){
     counter = counter + rate;
     checkBounds();
     fill(r,g,b);
     rect(x + counter,y, w, 10);
   }
   
   void checkBounds(){
     if (counter >= width) {
       counter = 0;
     }
   }
}
