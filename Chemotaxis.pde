 int red;
int green;
int blue;
int speed=1;
ball [] amount;
int checkX = 20,checkY = 20,count,count2=1;

void setup() {
  size(500,500); 
   noStroke();
   smooth();
   frameRate(60);
   amount= new ball[10];
    for(int i=0;i<amount.length;i++)
    amount[i]= new ball();
  }

void draw (){
  background(0,0,0);
  red=round((random(0,255)));
  green=round((random(0,255)));
  blue=round((random(0,255)));
  fill(red,green,blue);
  ellipse (mouseX,mouseY,25,25);
  noCursor();
  strokeWeight(50);
  textSize(30);
  fill(green,red,blue);
  
    for (int h=0; h<amount.length-(count*1);h++)
    {
     amount[h].moveballs();
     amount[h].drawball();
     amount[h].Check();
    }
    if (count>=10){
     textSize(60);
     text("YOU WIN",100,200);
    }
}

  
class ball
{
  int startX;
  int startY; 
  
    ball(){
      startX=(int)(Math.random()*500);
      startY=(int)(Math.random()*500);
      
    }
    void moveballs()
    {
      if(startX!=mouseX||startY!=mouseY){  
      ellipse (startX,startY,10,10);
      if (startX>=mouseX)
      startX = startX-(int)(Math.random()*10)+speed;
      else if (startX<=mouseX)
      startX = startX+(int)(Math.random()*10)-speed;
      if (startY>=mouseY)
      startY = startY-(int)(Math.random()*10)+speed;
      else if (startY<=mouseY)
      startY = startY+(int)(Math.random()*10)-speed;
      }
}
  void drawball(){
    ellipse (startX,startY,5,5);
    text("Score: "+count,175,30);
    ellipse (checkX,checkY,5,5);
  }  
  void Check(){
    if (startX==checkX && startY==checkY){
      NewCheck();
    }
  }
}

  void NewCheck(){
    
    checkX=(int)(Math.random()*500);
    checkY=(int)(Math.random()*500);
    count++;
    
}


void mousePressed() {
  if (mouseButton == LEFT) {
    NewCheck();
  }
}
void mouseWheel(MouseEvent event) {
  speed+=event.getCount();
}
