float x;
float rY, nY;
float t;

void setup(){
  size(800,400);
  background(255);

}

void draw(){
  if(x>width){
    x=0;
    
  }
  x++;
  rY = random(0,height/2);
  t += .01;
  float n = noise(t);
  nY = map(n,0,1,height/2,height);
  println(n);
  rect(x,rY,10,10);
  rect(x,nY,10,10);

}
