ArrayList<Object> obj;  

void setup(){
  size(600, 600); 
  
  obj = new ArrayList<Object>(); 
}

void draw(){
  background(255); 
  for(int i =0; i<obj.size();i++){
    Object o = obj.get(i);
    o.move();
    o.checkBoundaries();
    o.display();
    o.addForce(new PVector(0,.1,o.mass));
    o.wind();
  }
  //PVector gravity = new PVector(0, .1*o.mass); 
  //PVector wind = new PVector(0.1, 0); 

  //myObject.move(); 
  //myObject.checkBoundaries(); 
  //myObject.display(); 
   
}

void mousePressed(){
  obj.add(new Object(mouseX,mouseY));
}


class Object{
  PVector pos, vel, accel,gravity,wind; 
  float mass; 
  
  Object(float x, float y){
    pos = new PVector(x, y); 
    vel = new PVector(0, 0); 
    accel = new PVector(0, 0); 
    
    mass = random(5, 20); 
  }
  
  void move(){
    vel.add(accel); 
    pos.add(vel); 
    
    accel.mult(0); 
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,mass*3,mass*3);
  }
  
  void checkBoundaries() {
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }
 
    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  } 
  
  void addForce(PVector force){
    accel = force;
  }
  void wind(){
    
  }
  
}
