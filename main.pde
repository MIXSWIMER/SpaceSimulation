void setup() {
  size(500, 500, P3D);
  colorMode(HSB, 255, 255, 255);
  noStroke();
}
// camera settings
int cameraX = 250, cameraY = 250;
int cameraFOV = 1001;
ArrayList<Planet> objects = new ArrayList<Planet>();
int countOfObjects = 10;
int isFirstTick = 0;
boolean randomObjSettings = true;



void draw() {
  // run only 1 times in start tick
  while (isFirstTick++ == 0) {
    // crete objects
    for (int i = 0; i < countOfObjects; i++) {
      Planet obj = new Planet();
      // random objects settings generate
      if (randomObjSettings) {
        obj.colour = color((int)random(0, 255), 255, 200);
        obj.pos.x = random(0, 500);
        obj.pos.y = random(0, 500);
        obj.vel.x = random(-1, 1);
        obj.vel.y = random(-1, 1);
      }
      // set objects settings
      else {
      }
      objects.add(obj);
    }
  }




  background(160, 150, 60);

  // keypressed check
  if (keyPressed) {
    if (key == 'a' || key == 'ф') {
      cameraX -= 1 *((cameraFOV/100) / 2);
    } else if (key == 'd' || key == 'в') {
      cameraX += 1 *((cameraFOV/100) / 2);
    } else if (key == 'w' || key == 'ц') {
      cameraY -= 1 *((cameraFOV/100) / 2);
    } else if (key == 's' || key == 'ы') {
      cameraY += 1 *((cameraFOV/100) / 2);
    } else if (keyCode == UP) {
      cameraFOV -= 10 * cameraFOV/100;
    } else if (keyCode == DOWN) {
      cameraFOV += 10 * cameraFOV/100;
    }
  }
  
  // draw all objects
  for (Planet obj : objects) {
    obj.drawMe();
  }

  // camera move
  camera(cameraX, cameraY, cameraFOV, cameraX, cameraY, 0, 0, 1, 0);
}
