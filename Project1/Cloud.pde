class Cloud {
  float x = random(-1000, -100);
  float y = random(75, 200);
  float xspeed = random(4, 10);
  PImage c = loadImage("cloud.png");
  float cloudsize = random(.1, .6) ;
  
  void move() {
    x = x + xspeed;
    if (x > width + c.width) {
      x = random(-500, -100);
      y = random(75, 200);
      xspeed = random(4, 10);
    }
   }
 
   void show() {
     image(c, x, y, c.width*cloudsize, c.height*cloudsize);
   }
}
