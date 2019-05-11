int theta;
int sceneNumber = 0;

void setup(){
  size(800,800);
  rectMode(CENTER);
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw(){
switch(sceneNumber){
  case 0 :
  scene0();
  break;
  case 1 :
  scene1();
  break;
  case 2 :
  scene2();
  break;
  case 3 :
  scene3();
  break;
  case 4 :
  scene4();
  break;
  case 5 :
  scene5();
  break;
  case 6 :
  scene6();
  break;
  case 7 :
  scene7();
  break;
  
}
  
  
  
  
}

void keyPressed(){
  switch (sceneNumber){
    case 0 :
      if(key == ' '){
        sceneNumber = 1;
      }
      break;
    case 1 :
      if(key == ' '){
        sceneNumber = 2;
      }
      break;
    case 2 :
      if(key == ' '){
        sceneNumber = 3;
      }
      break;
    case 3 :
      if(key == ' '){
        sceneNumber = 4;
      }
      break;
    case 4 :
      if(key == ' '){
        sceneNumber = 5;
      }
      break;
    case 5 :
      if(key == ' '){
        sceneNumber = 6;
      }
      break;
    case 6 :
      if(key == ' '){
        sceneNumber = 7;
      }
      break;
    case 7 :
      if(key == ' '){
        sceneNumber = 0;
      }
      break;
    
  }

}
void scene0(){
  background(0);
  //theta++;
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(45));
  rect(0,0,325,325);
  popMatrix();
  //pushMatrix();
  //translate(400,400);
  //rotate(radians(theta+45));
  rect(width/2,height/2,325,325);
  //popMatrix();
  
  ellipse(width/2,height/2,300,300);
  ellipse(435,height/2,130,130);
  ellipse(width/2,height/2,200,200);
  ellipse(width/2,height/2,480,480);
  ellipse(width/2,height/2,700,700);
  ellipse(width/2,height/2,730,730);
  
  //ellipse(width/2+cos(-theta*.01)*295,height/2+sin(-theta*.01)*295,100,100);
  ellipse(width/2,105,100,100);
  ellipse(width/2,695,100,100);
  ellipse(105,height/2,100,100);
  ellipse(695,height/2,100,100);
  
  triangle(width/2,152,352,105,448,105);
  triangle(width/2,648,352,695,448,695);
  triangle(105,352,152,height/2,105,448);
  triangle(695,352,648,height/2,695,448);



}

void scene1(){
  background(0);
  
  theta++;
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
  
  //ellipse(width/2+cos(-theta*.01)*295,height/2+sin(-theta*.01)*295,100,100);
  ellipse(width/2,105,100,100);
  ellipse(width/2,695,100,100);
  ellipse(105,height/2,100,100);
  ellipse(695,height/2,100,100);
  
  triangle(width/2,152,352,105,448,105);
  triangle(width/2,648,352,695,448,695);
  triangle(105,352,152,height/2,105,448);
  triangle(695,352,648,height/2,695,448);



}

void scene2(){
   //background(0);
  theta++;
  stroke(255);
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
  
  ellipse(width/2+cos(-theta*.1)*295,height/2+sin(-theta*.1)*295,100,100);
  ellipse(width/2,105,100,100);
  ellipse(width/2,695,100,100);
  ellipse(105,height/2,100,100);
  ellipse(695,height/2,100,100);
  
  triangle(width/2,152,352,105,448,105);
  triangle(width/2,648,352,695,448,695);
  triangle(105,352,152,height/2,105,448);
  triangle(695,352,648,height/2,695,448); 
  
  stroke(102,0,204);
  ellipse(width/2,10,10,10);
  ellipse(10,300,10,10);
  ellipse(790,300,10,10);
  ellipse(100,790,10,10);
  ellipse(700,790,10,10);
  
  
  
}

void scene3(){
 stroke(102,0,204);
 strokeWeight(10);
 line(width/2,10,100,790);
 

}

void scene4(){
 stroke(102,0,204);
 strokeWeight(10);
 line(100,790,790,300);
 
}

void scene5(){
  stroke(102,0,204);
  strokeWeight(10);
  line(790,300,10,300);

}

void scene6(){
  stroke(102,0,204);
  strokeWeight(10);
  line(10,300,700,790);
 
}
void scene7(){
  stroke(102,0,204);
  strokeWeight(10);
  line(700,790,width/2,10);
}
