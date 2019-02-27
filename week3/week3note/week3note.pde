Mover mover;
Attracc a;

void setup(){
  size(600,600);
  mover = new Mover(10,random(0,width),random(0,height));
  a = new Attracc();
}
  
void draw(){
  background(0);
  a.display();
  PVector f = a.attracc(mover);
  mover.applyForce(f);
  mover.update();
  mover.display();

}
