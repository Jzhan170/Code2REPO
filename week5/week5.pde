int sceneNumber = 0;

void setup(){
  fullScreen();

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
    sceneNumber = 0;
    break;
  }

}

void mousePressed(){
  if(sceneNumber !=1){
    sceneNumber++;
  }
  

}

void scene0(){
  background(255,155,255);

}
void scene1(){
  background(155,255,255);
  if(mousePressed && dist(mouseX,mouseY,width/2,height/2)<25){
    sceneNumber=2;
  }
  ellipse(width/2,height/2,50,50);
}

void scene2(){
  background(255,255,155);
}
