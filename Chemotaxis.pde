Walker []bob;
PImage b;
PImage c;
PImage a;

void setup(){
 size(500,500);
 b = loadImage("https://image.ibb.co/bCyaeU/cute_seagull_png_2.png");
 c = loadImage("https://image.ibb.co/mCWNR9/58f37995a4fa116215a92421.png");
 a = loadImage("https://image.ibb.co/i4iBm9/prescott_park_dock2.jpg");
 bob = new Walker[50];
 for(int i = 0; i < 50; i++)
   bob[i] = new Walker();
}

void draw(){
  image(a, 0, 0, 500, 500);
  image(c, mouseX - 20, mouseY - 40, 75, 75);
  for(int i = 0; i < 50; i++){
  bob[i].show();
  bob[i].walk();
  }
}
class Walker{
  int myX, myY;
  Walker(){
  myX = myY = 250;
  }
  void walk(){
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show(){
    image(b, myX, myY, 75, 75);
  }
}

 
