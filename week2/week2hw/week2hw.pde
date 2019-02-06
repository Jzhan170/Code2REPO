Rain r;

ArrayList <Rain> myRain;
void setup(){
  size(800,800);
  noStroke();
  r=new Rain(random(0,width),0);
  myRain=new ArrayList<Rain>();
  
}

void draw(){
  background(204,255,255);
  int size=200;
  
  
  for(int i=0;i<myRain.size();i++){
    Rain r=myRain.get(i);
    r.display();
    r.fall();
    if(r.Alive()==false){
      myRain.remove(i);
    }
  }
  if(frameCount%1==0){
    myRain.add(new Rain(random(0,width),0));
  }
  
  for(int i =0; i<=width; i+=size)
  {
    fill(0,142,203);
    ellipse(i,20,size,size);
  }
  for(int i =0; i<=width; i+=size)
  {
    fill(100,209,255);
    ellipse(i-100,10,size,size);
  }
  
  rectMode(CENTER);
  fill(255,178,102);
  rect(100,700,200,200);
  rect(700,700,200,200);
  fill(0);
  rect(width/2,600,800,50);
  


}
