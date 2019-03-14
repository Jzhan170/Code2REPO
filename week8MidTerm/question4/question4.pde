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
    case 3 :
    scene3();
    break;
  
  }


}

void mousePressed(){
   sceneNumber++;
 

}

void scene0(){
  background(255,204,204);
  fill(204,255,255);
  ellipse(width/2,height/2,300,300);

}

void scene1(){
  background(204,255,255);
  fill(204,255,229);
  rect(width/2,height/2,300,300);

}

void scene2(){
  background(204,255,229);
  fill(255,255,204);
  ellipse(width/2,height/2,300,300);
}

void scene3(){
  background(255,255,204);
  fill(255,204,204);
  rect(width/2,height/2,300,300);
  
  
}
