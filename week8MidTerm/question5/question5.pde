float r,g,b;
color bgColor; 

void setup(){
  size(600, 600); 
  
}

void draw(){
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
}

void mousePressed(){
  bgColor = color(random(0,255),random(0,255),random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50); 
}
void keyPressed(){
  if(key=='s'){
    String [] Color = new String[bgColor];
    for(int i =0; i<bgColor;i++){
       Color[i] = r[i] +"\t"+g[i]+"\t"+b[i];
    }
    saveStrings("Color.txt", Color);
    
  }

}
