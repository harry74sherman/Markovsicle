class Icecream {
  float x = random(width);
  float y = random (-1000, -100);
  float yspeed = random(4, 10);
  PImage icecream;
  float icecreamSize;

  Icecream(PImage flavor) {
    icecream = flavor;
    icecreamSize = icecream.width*random(.4,.8);
  }

  void drop() {
    y = y + yspeed;
    yspeed = yspeed + .1;
    if (y > height) {
      y = random(-1000, -100);
      yspeed = random(4, 10);
    }
  }
  
  void show() {
     image(icecream, x, y, icecreamSize, icecreamSize);
  }
}
