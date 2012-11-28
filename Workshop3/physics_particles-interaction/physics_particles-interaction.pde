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
      balls[i].addForce(0,0.05);
      ball currentBall = balls[i];
      balls[i].draw();
      for ( int j = 0; j < balls.length; j++){
         ball otherBall = balls[j];
         noFill();
         float distance = dist(currentBall.pos.x, currentBall.pos.y, otherBall.pos.x, otherBall.pos.y);
         if (distance < 100){
             float a = map(distance,0,100,200,0);
             fill(255,0,0);
             stroke(255,0,0,a);
             strokeWeight(1);
             line(currentBall.pos.x, currentBall.pos.y, otherBall.pos.x, otherBall.pos.y);
         }
      } 

    }
}

void mousePressed(){
      for( int i = 0; i < balls.length; i++ ){
        balls[i] = new ball(random(0,width), random(0, height),random(-10,10),random(-10,10));
      }
}

