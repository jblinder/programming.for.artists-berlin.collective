ball b;
ball[] balls = new ball[100];
boolean bDrawWithBalls = false;
void setup(){
	 size(600,400);
    for( int i = 0; i < balls.length; i++ ){
      balls[i] = new ball(random(0,width), random(0, height),random(-10,10),random(-10,10));
    }
}

void draw(){
    if(!bDrawWithBalls)background(255);
    for( int i = 0; i < balls.length; i++ ){
      balls[i].addForce(0,0.28);
      balls[i].draw();
    }
}

void mousePressed(){
      for( int i = 0; i < balls.length; i++ ){
        balls[i] = new ball(mouseX, mouseY,random(-10,10),random(-10,10));
      }
      bDrawWithBalls = !bDrawWithBalls;
}

