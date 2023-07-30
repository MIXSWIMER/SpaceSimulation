class Planet {
  float mass = 10;
  float radius = 30;
  PVector pos;
  PVector vel;
  int[] colour = new int[3];

  void drawSelf(boolean drawVel) {
    // draw self
    noStroke();
    fill(colour[0], colour[1], colour[2]);
    circle(pos.x, pos.y, radius*2);

    // draw velocity vector
    if (drawVel) {
      stroke(255);
      fill(255, 0, 0);
      line(pos.x, pos.y, vel.x, vel.y);
      circle(vel.x, vel.y, 6);
      noStroke();
    }
  }
}
