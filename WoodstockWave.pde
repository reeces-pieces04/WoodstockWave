// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/



int arcStart = radians(180);
int arcEnd = arcStart;
int maxArcEnd = TWO_PI;
int movement = 0.0;
int speed = PI/1000;




void setup() {
  size(400, 400);
  
}

void draw() {
  background(0); 
  int i = 0;
  int sz = 300;


  while (sz > 20) {
    noFill();
    strokeWeight(3);
    stroke(255, 255, 255);
    arcEnd = map(sin(movement + (maxArcEnd / sz * i)), -1, 1, arcStart, maxArcEnd);
    arc(200, 200, sz, sz, arcStart, arcEnd);
    movement += speed;
    i += 1;
    sz -= 20;
    }

}
