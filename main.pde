import g4p_controls.*;
import peasy.*;


// camera settings
// насторойки камеры
int cameraX = 250, cameraY = 250;
int cameraFOV = 1001;
// objects
// объекты
ArrayList<Planet> objects = new ArrayList<Planet>();
int countOfObjects = 2;
int checkedObj = -1;
// other variables
// другие переменные
int isFirstTick = 0;
boolean randomObjSettings = true;
boolean isPause = true;

void setup() {
  size(850, 650, P3D);
  colorMode(HSB, 255, 255, 255);
  strokeWeight(1);
  noStroke();
  createGUI();
}


void draw() {
  // run only 1 times in start tick
  // запускается только 1 раз в начале
  while (isFirstTick++ == 0) {
    // crete objects
    // создание объектов
    for (int i = 0; i < countOfObjects; i++) {
      Planet obj = new Planet();
      // random objects settings generate
      // рандомные настройки объектов
      if (randomObjSettings) {
        obj.colour = color((int)random(0, 255), 255, 200);
        obj.pos.x = random(0, 500);
        obj.pos.y = random(0, 500);
        obj.vel.x = random(-1, 1);
        obj.vel.y = random(-1, 1);
      }
      obj.id = i;
      objects.add(obj);
    }
    Planet obj = objects.get(0);
    obj.pos.set(new PVector(100, 100));
    obj.vel.set(new PVector(0, 0));
    obj = objects.get(1);
    obj.pos.set(new PVector(0, 0));
    obj.vel.set(new PVector(0., 0));
  }




  background(160, 150, 60);

  // keypressed check
  // проверка нажатий клавиш
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
    } else if (keyCode == ENTER) {
      if (isPause) {
        isPause = false;
      } else {
        isPause = true;
      }
      keyCode = 0;
    }
  }
  
  if (!isPause) {
    // физика
    ArrayList<PVector> R = new ArrayList<PVector>();
    for (int i = 0; i < objects.size(); i++) {
      PVector A = new PVector(0, 0);
      R.add(new PVector(0, 0));

      for (int j = 0; j < objects.size(); j++) {
        if (i != j) {
          Planet obj = objects.get(i);
          Planet obj2 = objects.get(j);
          if (obj2.pos.x - obj.pos.x > 0) {
            A.x = obj2.mass / pow(obj2.pos.x - obj.pos.x, 2);
          } else if (obj2.pos.x - obj.pos.x < 0) {
            A.x = obj2.mass / pow(obj2.pos.x - obj.pos.x, 2) * -1;
          }
          if (obj2.pos.y - obj.pos.y > 0) {
            A.y = obj2.mass / pow(obj2.pos.y - obj.pos.y, 2);
          } else if (obj2.pos.y - obj.pos.y < 0) {
            A.y = obj2.mass / pow(obj2.pos.y - obj.pos.y, 2) * -1;
          }
        }
        R.get(i).x += A.x;
        R.get(i).y += A.y;
      }
    }

    for (int i = 0; i < objects.size(); i++) {
      Planet obj = objects.get(i);
      obj.vel.add(R.get(i));
      obj.update();
    }
  }
  
  // draw object
  // рисование объектов
  for (Planet obj : objects) {
    // checking for object selection
    // проверка на выделение объекта
    if (obj.id == slider_id.getValueI()) obj.checked = true;
    else obj.checked = false;
    obj.drawMe();
  }

  // camera move
  // перемещение камеры
  camera(cameraX, cameraY, cameraFOV, cameraX, cameraY, 0, 0, 1, 0);
}
