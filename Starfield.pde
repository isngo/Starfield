Fireworks[] firework = new Fireworks[100];
boolean firstCheck = false;
void setup()
{
  size(500,500);
  background(14,58,135);
}
void draw()
{
  background(14,58,135);
  if(firstCheck == true){
    for(int i = 0; i<firework.length; i++){
      firework[i].move();
      firework[i].show();
    }
  }
}

void mousePressed(){
  firstCheck = true;
  for(int i = 0; i<firework.length; i++){
    firework[i] = new Fireworks();
  }
  for(int i = 0; i<10; i++){
    firework[i] = new BigFireworks();
  }
}

class Fireworks
{
  double myX, myY, mySpeed, myAngle;
  int myColor, mySize;
  
  Fireworks(){
    myX = mouseX;
    myY = mouseY;
    mySpeed = Math.random()*4 + 2;
    myAngle = Math.random()*2*Math.PI;
    myColor = color(220,230,34);
    mySize = 20;
  }
  
  void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  
  void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}

class BigFireworks extends Fireworks
{
  BigFireworks(){
    myX = mouseX;
    myY = mouseY;
    mySpeed = Math.random()*2 + 1;
    myAngle = Math.random()*2*Math.PI;
    myColor = color(220,230,34);
    mySize = 60;
  }
}



