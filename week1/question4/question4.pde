PVector position;
float theta =0;
int orbitSize = 350;
int circleSize;
boolean isCircleOn;
boolean circlePressed;
int distance;
void setup(){
  background(255);
  size(700,700);
  position = new PVector(width/2,height/2);
  circleSize =100;
}

void draw(){
  distance = int(dist(position.x, position.y, mouseX, mouseY));
  theta += .01;
  background(255);
  
  if(circlePressed==false){
    position.x =  width/2+ cos(theta)* orbitSize;
    position.x ++;
  
  }
  
  if(distance<circleSize/2 && mousePressed){
    
   circlePressed=true;
   
  }
  
  if(circlePressed==true){
    position.y = height/height+ sin(theta)* orbitSize;
    position.y --;
    
  }
  ellipse(position.x,position.y,circleSize,circleSize);
  

}

    
