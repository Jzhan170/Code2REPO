class Attracc{
  float mass;
  float G;
  PVector position,dragOffset;
  
  Attracc(){
    position=new PVector(width/2,height/2);
    mass = 20;
    G = .98;
    dragOffset = new PVector(0.0,0.0);
  
  }

  PVector attracc(Mover m){
  
    PVector force = PVector.sub(position,m.position);
    float d = force.mag();
    d = constrain(d,5.0,25.0);
    force.normalize();
    float strength = (G*mass*m.mass)/(d*d);
    force.mult(strength);
    return force;
  }
  void display(){
    fill(255);
    ellipse(position.x,position.y,mass*2,mass*2);
  
  }


}
