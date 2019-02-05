
void setup(){
  size(600,600);
  noStroke();
}

void draw(){
  for(int i=0;i<width;i++){
    for(int j=0;j<height;j++){
      float x=dist(i,0,mouseX,0);
      float y=dist(j,0,mouseY,0);
      float r=map(x,0,width,0,255);
      float b=map(y,0,height,0,255);
      fill(r,210,b);
      ellipse(i,j,10,10);
    }
  
  
  
  }

}
