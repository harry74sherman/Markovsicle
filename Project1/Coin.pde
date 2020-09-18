class Coin {
 float x = random(width);
 float y = random (-5000, -100);
 float yspeed = random(4, 10);
 PImage quarter = loadImage("quarter.png");
 float coinSize = quarter.width*random(.1,.8);
 
 void drop() {
   y = y + yspeed;
   yspeed = yspeed + .03;
   if (y > height-(coinSize/2)) {
     y = height-(coinSize/2);
   }
 }
 
 void show() {
   image(quarter, x, y, coinSize, coinSize);
 }
}
