void setup(){
  size(600,600);
  background(255);
  //drawRect(width/2,height/2,600);
  //noFill();
  rectMode(CENTER);
}

void draw(){
  drawRect(width/2,height/2,width);
}

void drawRect(int x, int y, float radius){
  rect(x,y,radius,radius);
  //ellipse(x,y,radius,radius);
  if(radius>5){
    radius*= .75;
    pushMatrix();
    translate(x,y);
    float theta = mouseY;
    //theta+=30;
    rotate(radians(theta));
    drawRect(x,y,radius);
    //drawRect(x/4,y/4,radius);
    //drawRect(x/6,y/6,radius);
    //drawRect(x/8,y/8,radius);
    popMatrix();
  } 
}
