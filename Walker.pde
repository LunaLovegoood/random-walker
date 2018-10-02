import java.util.Random;

public class Walker {
  
  private final Random rnd = new Random();
  private PVector position;
  private final color walkerColor;
  private final int cellSize;
  
  public Walker() {
    this.position = new PVector(rnd.nextInt(width), rnd.nextInt(height));
    this.walkerColor = color(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255));
    
    this.cellSize = 1;
  }
  
  public Walker(color walkerColor, int cellSize) {
    this.position = new PVector(rnd.nextInt(width), rnd.nextInt(height));
    this.walkerColor = walkerColor;
    
    if (cellSize < 1) 
      this.cellSize = 1;
    else
      this.cellSize = cellSize;
  }
  
  public void walk() {
    noStroke();
    fill(walkerColor);
    
    changePosition();
    
    rect(position.x, position.y, cellSize, cellSize);
  }
  
  private void changePosition() {
    int direction = rnd.nextInt(4);
    
    switch (direction) {
    case 0: // moving left
      position.add(-cellSize, 0);
      if (position.x < 0) position.set(width - 1 - cellSize, position.y);
      break;
      
    case 1: // moving up
      position.add(0, -cellSize);
      if (position.y < 0) position.set(position.x, height - 1 - cellSize);
      break;
      
    case 2: // moving right
      position.add(cellSize, 0);
      if (position.x >= width) position.set(0, position.y);
      break;
      
    case 3: // moving down
      position.add(0, cellSize);
      if (position.y >= height) position.set(position.x, 0); 
    }
  }
  
}
