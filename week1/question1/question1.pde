String t[]={"inspirational quotes","so inspirational","don't you feel so inspired","motivating quotes are so motivating"};
float p[] = new float[4];
void setup(){
  size(600,600);

}

void draw(){
  background(255);
  for(int i=0;i<4;i++){
    p[i]=i*width/4+100*.75;
    fill(0);
    ellipse(p[i],100,100,100);
    if(dist(mouseX,mouseY,p[i],100)<50&&mousePressed){
      displayText(t[i]);
      fill(255);
    }
  }

}

void displayText(String t){
  textSize(30);
  textAlign(CENTER);
  fill(0);
  text(t,width/2,height/2);
}
