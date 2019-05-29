 int red;
int green;
int blue = (int)Math.random()*255;
int speed=10;
int x=1;
int size=5;
Others [] amount;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  cursor(WAIT);
  frameRate(60);
  amount= new Others[500];
  for (int i=0; i<amount.length; i++) {
    amount[i]= new snow();
    if (i>=400) {
      amount[i]= new Stack();
    }
  }
}

void draw () {
  background(0);
  fill(122, 122, 122);
  for (int h=0; h<amount.length; h++)
  {
    amount[h].movesnow();
    amount[h].drawsnow();
  }

  //--------------------------------------------------------- TREE
  fill(153, 76, 0);
  rect(400, 440, 30, 60);
  fill(0, 112, 0);
  triangle(350, 450, 410, 200, 475, 450);
  //---------------------------------------------------------- LIGHTS 
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  ellipse(350, 450, 10, 10);
  ellipse(365, 425, 10, 10);
  ellipse(390, 390, 10, 10);
  ellipse(415, 300, 10, 10);
  ellipse(400, 430, 10, 10);
  ellipse(420, 350, 10, 10);
  ellipse(475, 450, 10, 10);
  ellipse(430, 370, 10, 10);
  ellipse(460, 400, 10, 10);
  ellipse(450, 420, 10, 10);
  ellipse(415, 250, 10, 10);
  ellipse(390, 320, 10, 10);

  //--------------------------------------------------- STAR
  fill(255, 255, blue);
  pushMatrix();
  translate(410, 210);
  rotate(frameCount*100);
  star(0, 0, 10, 100, 100); 
  popMatrix();
  //-------------------------------------------------HOUSE
  fill(255,105,180);
  rect(0, 350, 150, 400);
  fill(139, 79, 29);
  triangle(55, 250, 200, 380, -80, 380);
  fill(255,255,blue);
  rect(80, 400, 30, 30);  
  fill(139,79, 29);
  rect(35,450,30,100);
  //-------------------------------------------------TEXT
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  textSize(64);
  text("HAPPY",100,100);
  text("HOLLIDAYS",150,150);
}
interface Others {
  void movesnow();
  void drawsnow();
}

class snow implements Others
{
  double startX;
  double startY;
  int size;

  snow() {
    startX=Math.random()*500;
    startY=Math.random()*1000-1500;
    size = 5;
  }
  void movesnow() {
    if (Math.random()*10>=5) {
      startX= startX+1;
    } else {
      startX= startX-1;
    }
    startY= startY+1;

    if (startY>=500) {
      startY=Math.random()*1000-1500;
    }
  }
  void drawsnow() {
    ellipse ((float)startX, (float)startY, size, size);
  }
} 
class Stack extends snow {
  
}

void mousePressed() {
}
void mouseWheel(MouseEvent event) {
  size+=event.getCount();
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
