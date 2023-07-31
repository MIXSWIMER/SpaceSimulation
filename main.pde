ArrayList<Planet> objects = new ArrayList<Planet>();
myCamera cam = new myCamera();
boolean isPause = true;


void setup() {
  size(800, 600, P2D);
}

void draw() {
  background(120);
  // check keybord pressed
  if (keyPressed) {
    if (keyCode == ENTER) {
      if (isPause) isPause = false;
      else isPause = true;
    } else if (key == 'a' || key == 'ф') {
      cam.Move(-1 + (cam.fov+3)/15, 0);
    } else if (key == 'd' || key == 'в') {
      cam.Move(1 + (cam.fov+3)/15, 0);
    } else if (key == 'w' || key == 'ц') {
      cam.Move(0, -1 + (cam.fov+3)/15);
    } else if (key == 's' || key == 'ы') {
      cam.Move(0, 1 + (cam.fov+3)/15);
    } else if (keyCode == DOWN) {
      if (cam.fov > 0.2) cam.fov -= 0.1;
    } else if (keyCode == UP) {
      if (cam.fov < 3) cam.fov += 0.1;
    }
  }
  if (!isPause) {
    
  }
  
  circle(200+cam.pos.x, 200+cam.pos.y, 50*cam.fov);
}
