
PShape sun,planet1,planet2;
PImage sunText, planet1Text, planet2Text;

Stars[] star = new Stars[300];


void setup(){
  fullScreen(P3D,2);
  sunText = loadImage("Sun.jpg");
  planet1Text = loadImage("earth.jpg");
  planet2Text = loadImage("jupiter.jpg");
  
  fill(255);
  noStroke();
  sun = createShape(SPHERE,200);
  sun.setTexture(sunText);
  
  planet1 = createShape(SPHERE, 120);
  planet1.setTexture(planet1Text);
  
  planet2 = createShape(SPHERE, 180);
  planet2.setTexture(planet2Text);
  
  for(int i=0; i<star.length; i++){
    star[i] = new Stars(random(0,width),random(height,0),color(255));
  }
}

void draw(){
  background(0);
  
  pushMatrix();
    translate(0,10,-250);
    for(int i =0; i<star.length;i++){
      star[i].display();
      star[i].move();
      star[i].reset();
      
    }
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2,-250);//translate the sun
  
  pushMatrix();//set a new coordinate system for our canvus
  rotateY(PI*frameCount/500);
  shape(sun);
  popMatrix();
  
  
  rotateY(PI*frameCount/300);
  translate(400,0,250);
  shape(planet1);
  //pushMatrix();
  //rotateY(PI*frameCount/600);
  translate(100,0,500);
  shape(planet2);
  //popMatrix();
  popMatrix();
  
  
}
