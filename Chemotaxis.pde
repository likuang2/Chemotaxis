dot[] dots;
void setup() {
  background(0);
  size(1000, 1000);
  dots = new dot[100];
  noStroke();
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new dot((int)(Math.random()*1000), (int)(Math.random()*1000));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < dots.length; i++) {
    dots[i].show();
    dots[i].move();
  }
}

class dot {
  int myX, myY, myColor;
  dot(int x, int y) {
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  void show() {
    fill(myColor);
    ellipse(myX, myY, 20, 20);
    if (myX < 0 || myX > 1000) {
      myX = 500;
    }
    if (myY < 0 || myY > 1000) {
      myY = 500;
    }
  }

  void move() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;

    if (mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
}
