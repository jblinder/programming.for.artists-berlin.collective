Particle b;
ArrayList balls = new ArrayList();
boolean bDrawWithBalls = false;

void setup(){
   size(1024,768);
}

void draw(){
    background(0);
    for( int i = 0; i < balls.size(); i++ ){
      Particle b = (Particle)balls.get(i);
      if (b.isDead()) balls.remove(i);
      float ii = 1/(i+1);
      b.addForce(ii,ii,ii);
      b.draw();
    }

        
    beginShape(QUAD_STRIP);
    noFill();
    for( int i = 0; i < balls.size()-1; i++ ){
      if (i>1) {
        Particle b = (Particle)balls.get(i);
        Particle ba = (Particle)balls.get(i+1);
        float p = map(PVector.dist(b.pos,ba.pos),0,100,1,10);
        stroke(255,255,255,b.getStroke());        
        strokeWeight(p);
        vertex(b.pos.x, b.pos.y);  
      }
    }
 
    endShape();
}

void mouseDragged(){
      float dx = mouseX - pmouseX;
      float dy = mouseY - pmouseY;
      
      balls.add(new Particle(mouseX, mouseY,dx*.03,dy*.03,dx*.03));
      bDrawWithBalls = !bDrawWithBalls;
}

