/**
  Learning the basics of variables, functions, and operators 
*/

//this is a single line comment
/*
  this is a 
  multi
  line 
  comment
*/

//declare our global variables
int radius;               //integer that controls the circle radius
float xMovement;          //decimal that moves the circle along the x axis 
boolean bClearBackground; //true or false value that determines if we clear the background
boolean bGrowCircle;      //true or false value that determines if the circle grows or shrinks
String frameRateLabel;    //string (text) that to store the current frame rate

//the setup method 
void setup(){
  size(640,480);
  background(0,0,0);

  //initialize our variables with defualt values
  bClearBackground = false;
  bGrowCircle = true;  
  radius = 0;
  frameRateLabel = "Current frame rate: ";
} 

void draw(){
  float circleGrowthRate = getRandomGrowthRate(1.0,2.5); //call our custom random rate function, we'll get back a value between .1 and 1
  growCircle(circleGrowthRate);                          //grow the circle at the rate we got back from the random rate function
  checkBounds();                                         //check if we should grow or shrink the circle
  
  if ( bClearBackground ) {                              
     background(0,0,0);
     text(frameRateLabel+frameRate, 10, 10); 
  }  
  stroke(255,255,255);
  noFill();
  ellipse(width/2, height/2,radius,radius);             //draw a circle
}

//returns a random growth rate between the min and max values
float getRandomGrowthRate(float minRandomValue, float maxRandomValue){
  float rate = random(minRandomValue, maxRandomValue); //random takes two numbers and returns a random number that's inbetween them
  return rate;
}

//increments the radius by the rate passed in
void growCircle(float rate){
  //rate is the amount that we want to grow the circle at
  if ( bGrowCircle ) {  //the same as writing if ( bGrowCircle == true ) { 
    radius += rate;     //the same as writing radius = radius + 1 or radius++
  } 
  else {
    radius -= rate;
  }
}

//checks if the circle should grow or shrink
void checkBounds(){
  //if the circle is bigger than the screen, shrink it, otherwise make it grow
  if ( radius >= width ) {
    bGrowCircle = false;
  }
  else if ( radius <= 0 )  {
    bGrowCircle = true;
  }
}


void mouseClicked(){
  bClearBackground = !bClearBackground;
  background(0,0,0);
   /*
    ! means the opposite of or not equals, in this case it sets bClearBackground to the opposite of it's current value 
    it's the same as writing this:
    if ( bClearBackground == true) {
      bClearBackground = false;
    }
    else {
      bClearBackground = true
    }
  */  
}

