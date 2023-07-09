class Planet {
  PVector pos = new PVector(0, 0);
  PVector vel = new PVector(0, 0);
  float mass = 10;
  float radius = 30;
  color colour = color(255, 255, 255);
  boolean checked = false; 
  int id = -1;

  void update() {
    pos.add(vel);
  }

  void drawMe() {
    fill(colour);
    if (checked) stroke(0, 0, 255);
    
    circle(pos.x, pos.y, radius);
    noStroke();
  }
}
