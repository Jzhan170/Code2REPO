int [] xPos = new int[0];
int [] yPos = new int[0];

void setup(){
  size(800,800);
  background(255);
  rectMode(CENTER);
  noStroke();
}

void draw(){
  //if(mousePressed){
    //rect(mouseX,mouseY,100,100);
 // }
 beginShape();
  for(int i = 0; i<xPos.length; i++){
    //vertex(x[i],y[i]);
    fill(255,204,204);
    rect(xPos[i],yPos[i],100,100);
    
    println("x: "+xPos[i] + "y:" +yPos[i]);
  }
  endShape();
  

}

void mousePressed(){
  xPos = append(xPos,mouseX);
  yPos = append(yPos,mouseY);

}

void keyPressed(){
  if(key=='s'){
    String [] cubes = new String[xPos.length];
    for(int i =0; i<xPos.length;i++){
      cubes[i] = xPos[i] + "\t" + yPos[i];
    }
    saveStrings("cubes.txt",cubes);
    exit();
  }

}
