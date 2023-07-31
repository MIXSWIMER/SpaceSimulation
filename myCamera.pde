class myCamera {
  PVector pos = new PVector(0, 0);
  float fov = 0;


  void Move (float x, float y) {
    pos.add(new PVector(x, y));
  }

  void vecMove (PVector distance) {
    pos.add(distance);
  }

  void fovMove (float distance) {
    fov += distance;
  }
}
