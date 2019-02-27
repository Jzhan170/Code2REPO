int w=50;
int h=25;
int cols,rows;
Bricks myBricks [][];
void setup(){
  size(600,600);
  cols = int(width/w);
  rows = int(height*.25/h);
  
  noStroke();
  
  myBricks = new Bricks[cols][rows];
  
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      myBricks[i][j] = new Bricks(i*w+10,j*h+5,w-10,h-5);
    
    }
  }
}

void draw(){
  background(0);
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      float red = map(i,0,cols,100,255);
      float blue = map(j,0,rows,50,200);
      myBricks[i][j].display(color(red,0,blue));
    
    }
  }

}
