Ball ball[] = new Ball[400];    //Array
 
void setup() {
  size(800,800);
 
  for(int i=0; i<ball.length; i++) {
    ball[i] = new Ball(300,300,(int)random(-3,3),(int)random(-3,3));
  }
}
 
void draw() {
  background(72,62,62);
  for (int i=0; i<ball.length; i++){
    fill (random(0,255));
    ball[i].move();
    ball[i].display();
  }
 
}
 
class Ball {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
 
  Ball(int tempX, int tempY, int xspeedtemp, int yspeedtemp) {
    x = tempX;
    y = tempY;
    xSpeed = xspeedtemp;
    ySpeed = yspeedtemp;
 
  }
 
  void display() {
    ellipse(x,y,20,20);
  }
 
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
 
    if (x>400) {
      xSpeed = xSpeed * -1;
    }
    if (x<0) {
      xSpeed = xSpeed * -1;
    }
    if (y>400) {
      ySpeed = ySpeed * -1;
    }if (y<0) {
      ySpeed = ySpeed * -1;
    }
  }
}
