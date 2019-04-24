class Stars{
  PVector position;
  PVector velocity;
  color c;
  float size;
  
  Stars(float _x, float _y,color _c){
    position = new PVector(_x,_y);
    velocity = new PVector(random(1,3),0);
    c= _c;
  }
  
  
  void move(){
    position.add(velocity);
  
  }
  
  void display(){
    noStroke();
    c = color(255);
    fill(c);
    size = random(5,10);
    ellipse(position.x,position.y,size,size);
  
  
  }
  
  void reset(){
    if(position.x >= width){
      position = new PVector(random(10,0),random(0,height));
      velocity = new PVector(random(1,3),0);
    }
  
  }



}
