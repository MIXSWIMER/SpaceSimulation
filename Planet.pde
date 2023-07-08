class Planet {
  PVector pos = new PVector(0, 0);
  PVector vel = new PVector(0, 0);
  float mass = 10;
  float radius = 30;
  color colour = color(255, 255, 255);
  
  
  void drawMe() {
    pos.add(vel);
    fill(colour);
    circle(pos.x, pos.y, radius);
  }
}
