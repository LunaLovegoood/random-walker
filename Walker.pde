import java.util.Random;

public class Walker {
  
  private final Random rnd;
  private PVector position;
  private int cellWidth;
  private int cellHeight;
  
  public Walker() {
    
    rnd = new Random();
    position = new PVector(rnd.nextInt(width), rnd.nextInt(height));
    
    cellWidth = 1;
    cellHeight = 1;
  }
  
  public void walk() {
    int direction = rnd.nextInt(4);
    
    switch (direction) {
    case 0:
      moveLeft();
      break;
    case 1:
      moveUp();
      break;
    case 2:
      moveRight();
      break;
    case 3:
      moveDown();
    }
  }
  
  public void moveLeft() {
    position.add(-cellWidth, 0);
    
  }
  
  public void moveUp() {
    position.add(0, -cellHeight);
    
  }
  
  public void moveRight() {
    position.add(cellWidth, 0);
    
  }
  
  public void moveDown() {
    position.add(0, -cellHeight);
    
  }
}
