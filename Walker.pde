import java.util.Random;

public class Walker {
  
  private final Random rnd;
  private PVector position;
  private int cellSize;
  
  public Walker() {
    rnd = new Random();
    position = new PVector(rnd.nextInt(width), rnd.nextInt(height));
    
    this.cellSize = 1;
  }
  
  public Walker(int cellSize) {
    rnd = new Random();
    position = new PVector(rnd.nextInt(width), rnd.nextInt(height));
    
    this.cellSize = cellSize;
  }
  
  public void walk() {
    int direction = rnd.nextInt(4);
    
    fill(0);
    
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
    position.add(-cellSize, 0);
    
    if (position.x < 0) position.set(width - 1 - cellSize, position.y);
    
    rect(position.x, position.y, cellSize, cellSize);
  }
  
  public void moveUp() {
    position.add(0, -cellSize);
    
    if (position.y < 0) position.set(position.x, height - 1 - cellSize);
    
    rect(position.x, position.y, cellSize, cellSize);
  }
  
  public void moveRight() {
    position.add(cellSize, 0);
    
    if (position.x >= width) position.set(0, position.y);
    
    rect(position.x, position.y, cellSize, cellSize);
  }
  
  public void moveDown() {
    position.add(0, cellSize);
    
    if (position.y >= height) position.set(position.x, 0); 
    
    rect(position.x, position.y, cellSize, cellSize);
  }
}
