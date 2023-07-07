void setup() {
  size(500, 500, P3D);
}
// camera settings
int cameraX = 250, cameraY = 250;
int cameraFOV = 1001;


void draw() {
  background(20, 30, 90);

  // keypressed check
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      cameraX -= 1 *((cameraFOV/100) / 2);
    } else if (key == 'd' || key == 'D') {
      cameraX += 1 *((cameraFOV/100) / 2);
    } else if (key == 'w' || key == 'W') {
      cameraY -= 1 *((cameraFOV/100) / 2);
    } else if (key == 's' || key == 'S') {
      cameraY += 1 *((cameraFOV/100) / 2);
    } else if (keyCode == UP) {
      cameraFOV -= 10 * cameraFOV/100;
    } else if (keyCode == DOWN) {
      cameraFOV += 10 * cameraFOV/100;
    }
  }
  // camera move
  camera(cameraX, cameraY, cameraFOV, cameraX, cameraY, 0, 0, 1, 0);
  
  circle(250, 250, 200);
}
