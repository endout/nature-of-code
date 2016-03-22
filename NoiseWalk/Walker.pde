class Walker {
  PVector location;
  PVector noff;
  
  Walker(){
    location = new PVector(width/2, height/2);
    noff = new PVector(random(1000), random(1000)); 
  }
  
  void display() {
    strokeWeight(2);
    fill(127);
    stroke(0);
    ellipse(location.x, location.y, 48, 48);
  }
  
  void walk(){
    location.x = map(noise(noff.x), 0, 1, 0, width);
    location.y = map(noise(noff.y), 0, 1, 0, height);
    
    noff.add(0.01, 0.01, 0);
  }
}