String [] cubes;
int index = 0;

void setup(){
  size(800,800);
  background(255);
  cubes = loadStrings("cubes.txt");
  rectMode(CENTER);
  noStroke();
}

void draw(){
  fill(255,204,204);
  if(index < cubes.length){
    String[] C = split(cubes[index], "\t");
    
    if(C.length == 2){
      int xPos = int(C[0]);
      int yPos = int(C[1]);
      rect(xPos,yPos,100,100);
    }
  }

}
