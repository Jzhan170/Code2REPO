int cols, rows; 
int w = 50;
int h = 25; 
int lives,score;
float startingT;
float clickingT;

Ball b; 
Paddle p; 
Bricks myBricks [][]; //setting up a 2D grid to store instances of our bricks

void setup(){
  size(500, 500); 
  cols = int(width/w); 
  rows = int((height*.5)/h); 
  
  noStroke(); 
  lives = 3;
  startingT = millis();
  textSize(20);
  
  
  myBricks = new Bricks[cols][rows]; 
  
  b = new Ball(width/2, height*.75, random(3,5), random(-5,-4)); 
  p = new Paddle(); 
  
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      myBricks[i][j] = new Bricks(i*w+5, j*h+5, w-10, h-10); 
    }
  }
}



void draw(){
  background(0); 
  
  textAlign(CENTER, TOP);
  
  
  
  
  b.move(); 
  b.display();
  
  p.display(); 
  p.reset(); 
  
  //making sure our ball stays within the boundaries of our screen 
  if(b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2){
    b.bounceSide(); 
  }
  if(b.pos.y<=b.size/2 ){
    b.bounceTop(); 
  }
  if(b.pos.y>=height){
    b.bounceTop();
    b.ballReset();
    lives = lives -=1;
  }
  //ball bouncing off of the paddle 
  //FIX THIS PADDLE COLLISION IS NOT WORKING
  if(b.pos.x >= p.x && b.pos.x <= p.x+p.w &&b.pos.y<=(p.y+(b.size/2))&& b.pos.y>=(p.y-b.size/2+p.h/2)){ 
    b.paddleBounce(); 
  }
  
  //breaking bricks 
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      float bl = map(i, 0, cols, 100, 255); 
      float g = map(j, 0, rows, 150, 255); 
      myBricks[i][j].display(color(50, g, bl));  
      
            // checking to see if ball is within the boundaries of our bricks 
      if(b.pos.x<= (myBricks[i][j].x + myBricks[i][j].w) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w) 
        && b.pos.y<= (myBricks[i][j].y + myBricks[i][j].h) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h)&& myBricks[i][j].detector == true){
         myBricks[i][j].o = 0;
         b.bounceTop();
         score = score+=1;
         myBricks[i][j].detector = false;
         //just changing the opacity here but you can figure out how to remove the object using an array list 
      }
    }
  }
  
  if(keyPressed){
    if(key==CODED){
      if(keyCode == LEFT){
        p.moveLeft();
      }
      if(keyCode == RIGHT){
        p.moveRight(); 
      }
    }
  }
  
  String printlives = ("LIVES:"+lives);
  fill(255);
  text(printlives, width-150, height-50);
  
  String printscore = ("SCORE:"+score);
  fill(255);
  text(printscore,width-50,height-50);
  float clickingT = (millis()- startingT)/1000;
  println(clickingT);
  text(60-clickingT,width/2,height-50);
  
}
