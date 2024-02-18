class Point {
  
  /**
  * Represents the x value of the point (int)
  */
  public int x;
  
  /**
  * Represents the y value of the point (int)
  */
  public int y;
  
  /**
  * Creates a point object
  */
  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  /**
  * Creates a point object
  */
  void display() {
    stroke(255, 0, 0);
    strokeWeight(5);
    point(x, y);
  }
  
  
}
