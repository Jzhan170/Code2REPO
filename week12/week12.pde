float x,y,z;
void setup(){
  size(1200,1200, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  background(0);
}

void draw(){
  stroke(255);
  noFill();
  pushMatrix();
  translate(width/2,height/2,0);
  rectMode(CENTER);
  rotateX(PI/8);
  rotateY(PI/8);
  rotateZ(PI/8);
  box(100);
  popMatrix();
  
  pushMatrix();
  translate(width/4,height/2,0);
  sphere(100);
  popMatrix();
  
  translate(900,500,0);
  
  stroke(255);
  rotateX(PI/2);
  rotateZ(-PI/6);
  noFill();
  beginShape();
  vertex(-100, -100, -100);
  vertex(100, -100, -100);
  vertex(0, 0, 100);
  
  vertex(100, -100, -100);
  vertex(100, 100, -100);
  vertex(0, 0, 100);
  
  vertex(100, 100, -100);
  vertex(-100, 100, -100);
  vertex(0, 0, 100);
  
  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(0, 0, 100);
  endShape();
  //rect(0,0,600,600);
  
  //z++;
}
