import java.util.ArrayList;

ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup() {
  size(600, 600);
  background(255, 255, 255);
  
  frameRate(10000);
  
  for (int i = 0; i < 40; i++)
    walkers.add(new Walker());
}

void draw() {
  for (Walker walker : walkers)
    walker.walk();
}
