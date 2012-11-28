void setup(){
  size(640,480);
}

void draw(){
  background(0);
  stroke(255);
  strokeWeight(6);
  noFill();
  int iterations = max(1,mouseX); //max takes in two numbers and returns the highest one
  //loop through 1 - mouseX number of times
  for (int i = 0; i < iterations; i++){
      
      //scale the mouseX and mouseY values from a value between 0 and width or height to 1 and 100 
      float scalar1 = getScaledMouseValue(mouseX, width);
      float scalar2 = getScaledMouseValue(mouseY, height);
      
      //use the iterator (the i variable) to control our x coordinates
      float x1 = i*scalar1;
      float y1 = 0;
      float x2 = i*scalar2;
      float y2 = width;
      
      //draw a line or curve with our values
      // line ( x1, y1, x2, y2);
      curve( (mouseX+1)/2,(mouseY+1)/2,x1, y1, x2, y2,mouseX*2,mouseY*2);
  }
}

//return a float value given a number an maximum value
float getScaledMouseValue(int number, int maxNumber)
{
   return map(number,0, maxNumber, 1, 100);
}
