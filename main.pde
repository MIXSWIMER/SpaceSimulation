ArrayList<Planet> objects = new ArrayList<Planet>();
myCamera cam = new myCamera();
boolean isPause = true;


void setup() {
  size(800, 600, P2D);
}

void draw() {
  // check keybord pressed
  if (keyPressed) {
    if (keyCode == ENTER) {
      if (isPause) isPause = false;
      else isPause = true;
    } else if (key == 'a' || key == 'ф') {
      cam.Move(-cam.fov/10, 0);
    } else if (key == 'd' || key == 'в') {
      cam.Move(cam.fov/10, 0);
    } else if (key == 'w' || key == 'ц') {
      cam.Move(0, -cam.fov/10);
    } else if (key == 's' || key == 'ы') {
      cam.Move(0, cam.fov/10);
    } else if (keyCode == UP) {
      cam.fov -= 10 * cam.fov/10;
    } else if (keyCode == DOWN) {
      cam.fov += 10 * cam.fov/10;
    }
  }
  if (!isPause) {
  }
}
