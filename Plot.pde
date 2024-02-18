import java.util.Arrays;

class Plot {
  /**
  * Number of points. Must be greater than zero.
  */
  private int numberOfPoints;
  
  /**
  * Creating an array for the number of points.
  */
  private Point points[];
  
  /**
  * Checking preconditions from the invariant
  */
  void assertInv() {
    assert numberOfPoints > 0;
    assert points.length > 0;
    assert numberOfPoints == points.length;
  }
  
  /**
  * Creating and establishing point object constructor.
  */
  Plot(int numberOfPoints) {
    this.numberOfPoints = numberOfPoints;
    this.points = new Point[numberOfPoints];
    assertInv();
  }
  
  /**
  * Assign each point a random (x, y) position 
  * x must be no greater than the width of the screen
  * y must be no greater than the hieght of the screen
  */
  public void assignPositions() {
    for (int i = 0; i < numberOfPoints; i++) {
      int x = int(random(width));
      int y = int(random(height));
      points[i] = new Point(x, y);
    }
  }
  
  /**
  * Get a point based on index in the array
  */
  public Point getPoint(int index) {
    return points[index];
  }
  
  /**
  * Will display the points.
  */
  void displayPlot() {
    stroke(255);
    strokeWeight(5);
    for (int i = 0; i < numberOfPoints; i++) {
      point(points[i].x, points[i].y);
    }
  }
  
  /**
  * Given a Point p, display the point closest to it by
  * drawing a line to it
  */
  void displayClosestPoint(Point p) {
    stroke(255);
    strokeWeight(1);
    Point q = findClosestPoint(p);
    line(p.x, p.y, q.x, q.y);
  }
  
  /**
  * Will return the numberOfPoints
  */
  public int getNumberOfPoints() {
    return numberOfPoints;
  }
  
  /** 
  * Finds the closest point from a selected point in the array.
  * Returns the point it found.
  */
  private Point findClosestPoint(Point startingPoint) {
    
    // List of point distances
    float distances[] = new float[numberOfPoints];
    
    int indexOfClosestPoint = 0;
    
    for (int i = 0; i < numberOfPoints; i++) {
      distances[i] = calculateDistance(points[i], startingPoint);
      print(distances[i] + ", ");
    }
    
    // Minimum distance
    float minDistance = distances[0];
    
    for (int i = 0; i < distances.length; i++) {
      if (distances[i] < minDistance) {
        minDistance = distances[i];
        indexOfClosestPoint = i;
      }
    }
    
    println("\nMinimum distance in Array: " + minDistance);
    
    return points[indexOfClosestPoint];
  }
  
  /** 
  * Helper method for findPoint. Caculates distance from point to point
  */
  private float calculateDistance(Point p, Point q) {
    return sqrt(pow(abs(p.x - q.x), 2) + pow(abs(p.y - q.y), 2));
  }
  
}
