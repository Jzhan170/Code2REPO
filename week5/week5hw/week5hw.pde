int sceneNumber = 0;

void setup(){
  size(600,600);
  rectMode(CENTER);
  noStroke();
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
        sceneNumber = 0;
      }
      break;
  }

}

void scene0(){
  background(255,233,233);
  fill(155,255,255);
  pushMatrix();
  translate(width/2,height/2);
  rotate(sin(frameCount *0.001)*(PI*2));
  rect(0,0,200,200);
  popMatrix();
}

void scene1(){
  background(255,233,233);
  fill(155,255,255);
  pushMatrix();
  translate(width/2,height/2);
  rotate(sin(frameCount *0.01)*(PI*2));
  rect(0,0,200,200);
  popMatrix();
}

void scene2(){
  background(255,233,233);
  fill(155,255,255);
  pushMatrix();
  translate(width/2,height/2);
  rotate(sin(frameCount *0.1)*(PI*2));
  rect(0,0,200,200);
  popMatrix();

}
