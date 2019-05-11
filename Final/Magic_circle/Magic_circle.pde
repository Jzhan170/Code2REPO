int theta;

void setup(){
  size(800,800);
  rectMode(CENTER);
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw(){
  background(0);
  theta++;
  drawshape(100);
  
}
void drawshape(float r){
  r=r*.75;
  if(r>10){
 
  pushMatrix();
  translate(400,400);
  rotate(radians(theta));
  rect(0,0,325,325);
  popMatrix();
  pushMatrix();
  translate(400,400);
  rotate(radians(theta+45));
  rect(0,0,325,325);
  popMatrix();
  
  ellipse(width/2,height/2,300,300);
  ellipse(435,height/2,130,130);
  ellipse(width/2,height/2,200,200);
  ellipse(width/2,height/2,480,480);
  ellipse(width/2,height/2,700,700);
  ellipse(width/2,height/2,730,730);
  
  ellipse(width/2+cos(theta*.01)*295,height/2+sin(theta*.01)*295,r,r);
  ellipse(width/2,695,r,r);
  ellipse(105,height/2,r,r);
  ellipse(695,height/2,r,r);
  
  triangle(width/2,152,352,105,448,105);
  triangle(width/2,648,352,695,448,695);
  triangle(105,352,152,height/2,105,448);
  triangle(695,352,648,height/2,695,448);
  drawshape(r);
  }
}
