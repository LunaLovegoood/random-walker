Walker walker;

void setup() {
  size(400, 400);
  background(255, 255, 255);
  
  frameRate(10000);
  
  walker = new Walker(5);
}

void draw() {
  walker.walk();
}
