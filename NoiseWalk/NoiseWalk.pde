Walker w;

void setup(){
  size(300, 600);
  frameRate(30);
  
  w = new Walker();
}

void draw(){
  background(255);
  
  w.walk();
  w.display();
}