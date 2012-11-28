class ball{
  PVector pos;
  PVector vel;
  PVector frc;
  PVector col;
  float damping = 0.013;
  float ballSize;
  
  ball(float x, float y, float vx, float vy){
      pos = new PVector(x,y,0);
      vel = new PVector(vx,vy,0); 
      frc = new PVector(0,0); 
      col = new PVector(random(0,255),random(0,255),random(0,255));
  }
  
  void update(){
    vel.add(frc);
    pos.add(vel);
  }
  
  void draw(){
    noStroke();
    fill(col.x,col.y,col.z);
    ballSize = map(pos.y, 0, height, 4,55);
    ellipse(pos.x, pos.y, ballSize,ballSize);
  }
  
  void resetForce(){
    frc.set(0,0,0);
  }
    
  void addDampingForce(){
    frc.x = frc.x - (vel.x * damping);
    frc.y = frc.y - (vel.y * damping);
    frc.z = frc.z - (vel.z * damping);
}
  
  void addForce(float x, float y){
    resetForce();
    frc.add(x,y,0);
    addDampingForce();
    bounceOffWalls();
    update();
  }
  
  void bounceOffWalls(){
    boolean bDidICollide = false;
    
    if( pos.x > width ) {
      pos.x = width;
      vel.x = vel.x *-1;
      bDidICollide = true;
    }
    else if( pos.x < 0 ) {
      pos.x = 0;
      vel.x = vel.x*-1;
      bDidICollide = true;      
    }
    
    if( pos.y > height ) {
      pos.y = height;
      vel.y = vel.y * -1;
      bDidICollide = true;      
    }
    else if( pos.y <  0) {
      pos.y = 0;
      vel.y = vel.y* -1;
      bDidICollide = true;      
    }
    
    if ( bDidICollide == true ){
      vel.y = vel.y * 0.3;
    }
  
  }
}
