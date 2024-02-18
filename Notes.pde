Plot plot;
Point myPoint;

void setup() {
  size(800, 500);
  plot = new Plot(10);
  plot.assignPositions();
}

void draw() {
  background(0);
  myPoint = new Point(mouseX, mouseY);
  myPoint.display();
  plot.displayPlot();
  plot.displayClosestPoint(myPoint);
}
