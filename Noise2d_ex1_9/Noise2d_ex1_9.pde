float increment = 0.02;

float zoff = 0.0;
float zincrement = 0.02;

void setup(){
  size(640, 360);
  //noLoop();
}

void draw(){
  background(0);
  
  loadPixels();
  
  float xoff = 0.0;
  
  for(int x = 0; x < width; x++){
    xoff += increment;
    float yoff = 0.0;
    for(int y = 0; y < height; y++){
      yoff += increment;
      
      float bright = noise(xoff, yoff, zoff)*255;
      
      pixels[x+y*width] = color(bright, bright, bright);
    }
  }
  
  updatePixels();
  
  zoff += zincrement;
}
    