import java.util.ArrayList;
Integer sum = new Integer(0);
int red;

void setup(){
  frameRate(4);
  size(870,950);
  colorMode(HSB);
}
void draw(){
  sum = 0;
  background(200);
  for(int x = 10; x<800; x +=85 ){
    for(int y = 10; y<800; y+=85 ){
      Die die = new Die(x,y,80,10,15);
      die.roll();
      die.show();
    }
  }
  fill(255);
  rect(150,900,600,45);
  fill(0);
  text("Sum: " + sum.toString(),420,925);
  
  
}

void mousePressed(){
  sum = 0;
  redraw();
  
}

class Die {
  int x, y, numDots, length, dotDiameter, borderRadii;
  Die(int x, int y, int length, int dotDiameter, int borderRadii){
    this.x = x;
    this.y = y;
    this.length = length;
    this.dotDiameter = dotDiameter;
    this.borderRadii = borderRadii;
  }
  int roll(){
    numDots =(int)((Math.random()*6)+1);
    return numDots;
  }
  void rainbow(){
    red++;
    if (red > 255) {
      red = 0;
    }
    return; 
  }
  void show(){
   
    fill(color(red, 255, 255));
    rect(x,y,length,length,borderRadii);
    if(numDots == 1){
      fill(0);
      ellipse(x+40,y+40,dotDiameter,dotDiameter);
      sum ++;
    } else if(numDots == 2){
      fill(125);
      ellipse(x+20,y+20,dotDiameter,dotDiameter);
      ellipse(x+60,y+60,dotDiameter,dotDiameter);
      sum +=2;
    } else if(numDots == 3){
      fill(250);
      ellipse(x+20,y+20,dotDiameter,dotDiameter);
      ellipse(x+40,y+40,dotDiameter,dotDiameter);
      ellipse(x+60,y+60,dotDiameter,dotDiameter);
      sum +=3;
    } else if(numDots == 4){
      fill(133,87,35);
      ellipse(x+20,y+20,dotDiameter,dotDiameter);
      ellipse(x+60,y+20,dotDiameter,dotDiameter);
      ellipse(x+20,y+60,dotDiameter,dotDiameter);
      ellipse(x+60,y+60,dotDiameter,dotDiameter);
      sum+=4;
    } else if(numDots == 5){
      fill(45,66,89);
      ellipse(x+20,y+20,dotDiameter,dotDiameter);
      ellipse(x+60,y+20,dotDiameter,dotDiameter);
      ellipse(x+40,y+40,dotDiameter,dotDiameter);
      ellipse(x+20,y+60,dotDiameter,dotDiameter);
      ellipse(x+60,y+60,dotDiameter,dotDiameter);
      sum+=5;
    } else {
      fill(89,66,45);
      ellipse(x+20,y+20,dotDiameter,dotDiameter);
      ellipse(x+60,y+20,dotDiameter,dotDiameter);
      ellipse(x+20,y+60,dotDiameter,dotDiameter);
      ellipse(x+60,y+60,dotDiameter,dotDiameter);
      ellipse(x+20,y+40,dotDiameter,dotDiameter);
      ellipse(x+60,y+40,dotDiameter,dotDiameter);
      sum+=6;
    }
    rainbow();
  }
}
