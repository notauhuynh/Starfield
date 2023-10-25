Particle[] stars = new Particle[2000];
void setup()
{
  size(600, 600);
  background(30);
  noStroke();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Particle();
    if(i % 2 == 0){
    stars[i] = new OddballParticle();
    }
  }
}
void draw()
{
  for (int i = 0; i < stars.length; i++) {
    stars[i].move();
    stars[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myY = myX = 300;
    mySpeed = Math.random() * 10 + 1;
    myAngle = Math.random() * 2 * Math.PI;
    myColor = color(#FFFFFF);
  }
  void move() {

    myX = myX + (myAngle *  Math.cos(mySpeed));
    myY = myY + (myAngle *  Math.sin(mySpeed));
    
  }


  void show() {

    ellipse((float)myX, (float)myY, 1, 1);
    fill(myColor);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
     myY = myX = 300;
    mySpeed = 50 + Math.random() * 100;
    myAngle = Math.random() * 2 * Math.PI;
  }
  void move() {
    myX = myX + ((myAngle *  Math.cos(mySpeed))/4);
    myY = myY + ((myAngle *  Math.sin(mySpeed))/4);
  }

  void show() {
    ellipse((float)myX, (float)myY, 1, 1);
    fill(#000000);
    
  }
}
