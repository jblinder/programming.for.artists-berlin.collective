class Ball{
  //properties: (adjectives) they describe an object
  float x = 200;
  float y;
  float z;
  float colorRed = 255;
  float colorBlue;
  float colorGreen;  
  float radius;
  float counter;
  
  //functions/methods: (verbs) they perform actions 
  //The constructor method doesn't need a return type, it returns an instance of our Ball object
  Ball(float xPos, float yPos){
    x = xPos;
    y = yPos;
    radius = random(10,20);
    counter = random(100,200);
  }
  
  //our object's local draw() method, it only gets called 
  //if we manually call it from another class (unlike the processing draw() method)
  void draw(){
      counter = counter - 1;
      //float r = random(1,5);
      fill(colorRed, colorBlue, colorGreen);
      noStroke();
      ellipse(x, y,counter,counter);
     // line(x,y,x+10,y+10);
  }
  
  
}
