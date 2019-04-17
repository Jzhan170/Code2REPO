String currentString = ":";
int generations = 0;

void setup(){}


void draw(){}

void mousePressed(){
  String nextString = "";
  for(int i =0 ; i<currentString.length(); i++){
    char c = currentString.charAt(i);
    if(c == ':'){
      nextString += ":)";
    }else if(c == ')'){
      nextString += ")";
    }
  }
    currentString = nextString;
    generations ++;
    println("Generations:" + generations + ":" + currentString);
  

}
