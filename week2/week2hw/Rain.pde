class Rain{
  
 float x,y;
  color c;
  int o;
  float g;
  float size;
  
  Rain(float _x, float _y){
    x=_x;
    y=_y;
    o=255;
    g=random(1,3);
    size=random(5,15);
  }
  
   void fall(){
    y+=g;
    o--;
  }
  
  
  
  void display(){
    noStroke();
    fill(100,209,255);
    ellipse(x,y,size,size);
    
    fill(255,255,51);
    ellipse(mouseX,710,50,50);
    fill(255,153,51);
    rectMode(CENTER);
    rect(mouseX,780,60,100);
  
  }

  boolean Alive(){
    if(y<height){
      return true;
    }else{
      return false;
    }
  }




}
