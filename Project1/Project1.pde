Coin[] coins = new Coin[20];
Icecream[] icecreams = new Icecream[10];
Cloud[] clouds = new Cloud[5];
PImage[] icecreamPics = new PImage[10];
PImage sun;

//states
String[] states = {"sunny", "cloudy"};

//possible transitions
String[][] transitionNames = {{"SS", "SC"}, {"CS", "SC"}};

//probabilities of transitions
float[][] transitionMatrix = {{0.7, 0.3},{0.2, 0.8}};

\\         sunny  cloudy
\\ sunny    0.7    0.3
\\ cloudy   0.2    0.8
\\

String weatherToday = states[random(states.length)];
int number = random(1,11);
String weatherTomorrow;

if (weatherToday = "sunny") {
  if (number <= 7) {
    weatherTomorrow = "sunny";
  } else {
    weatherTomorrow = "cloudy";
  }
} else {
  if (number <= 8) {
    weatherTomorrow = "cloudy";
  } else {
    weatherTomorrow = "sunny";
  }
}


void setup() {
  sun = loadImage("sun.png");
  size(1000, 800);
  
  for (int i = 0; i < coins.length;i++) {
    coins[i] = new Coin();
  }
  
  for (int i = 0; i < icecreams.length; i++) {
    icecreamPics[i] = loadImage("icecream"+i+".png");
  }
  for (int i = 0; i < icecreams.length; i++) {
    int randomPic = int(random(0, icecreamPics.length));
    icecreams[i] = new Icecream(icecreamPics[randomPic]);
  }
  
  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = new Cloud();
  }
}

void draw() {
  imageMode(CENTER);
  if (weatherTomorrow == "sunny") {
    background(230, 230, 250); 
    image(sun, width-60, 60);
    for (int i = 0; i < coins.length; i++) {
      coins[i].drop();
      coins[i].show();
    }
  
    for (int i = 0; i < icecreams.length; i++) {
      icecreams[i].drop();
      icecreams[i].show();
    }
    
  } else { //weather tomorrow is cloudy
    background(139, 132, 132); 
    for (int i = 0; i < clouds.length; i++) {
      clouds[i].move();
      clouds[i].show();
    }
    
    for (int i = 0; i < 6; i++) {
      coins[i].drop();
      coins[i].show();
    }
  
    for (int i = 0; i < 3; i++) {
      icecreams[i].drop();
      icecreams[i].show();
    } 
  }  
}
