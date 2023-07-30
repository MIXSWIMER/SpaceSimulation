boolean isPaused = true;

void setup() {
  size(800, 600, P2D);
}

void draw() {
  // check keybord pressed
  if (keyPressed) {
    if (keyCode == ENTER) {
      if (isPause) isPause = false;
      else isPause = true;
    }
  }
  if (!isPaused) {
  }
}
