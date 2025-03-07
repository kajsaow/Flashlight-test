boolean wPressed, sPressed, aPressed, dPressed;
boolean upPressed, downPressed, leftPressed, rightPressed;

PGraphics darkness, maskLayer;

Player player1;
Player player2;


Flashlight flashlight;


void setup() {
  rectMode(CENTER);

  size(500, 500);
  background(180);

  darkness = createGraphics(width, height);
  maskLayer = createGraphics(width, height);

  flashlight = new Flashlight(200);


  player1 = new Player(50, 50, 5, 10);
  player2 = new Player(100, 100, 3, 10);
}

void draw() {


  background(180);
  fill(100, 350, 200);
  rect(200, 100, 200, 40);
  fill(100, 30, 200);
  rect(300, 40, 100, 60);


  player1.display();
  player1.moveWASD();


  player2.display();
  player2.moveARROW();

  flashlight.light(player1.xpos,player1.ypos);
  flashlight.light(player2.xpos,player2.ypos);
  //flashlight1.addLight(player1.xpos, player1.ypos);
  //flashlight1.addLight(player2.xpos, player2.ypos);
}


void keyPressed() {
  if (key == 'w' || key == 'W') {
    wPressed = true;
  }
  if (key == 's' || key == 'S') {
    sPressed = true;
  }
  if (key == 'a' || key == 'A') {
    aPressed = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
  }

  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = true;
    }
    if (keyCode == DOWN) {
      downPressed = true;
    }
    if (keyCode == LEFT) {
      leftPressed = true;
    }
    if (keyCode == RIGHT) {
      rightPressed = true;
    }
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    wPressed = false;
  }
  if (key == 's' || key == 'S') {
    sPressed = false;
  }
  if (key == 'a' || key == 'A') {
    aPressed = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = false;
    }
    if (keyCode == DOWN) {
      downPressed = false;
    }
    if (keyCode == LEFT) {
      leftPressed = false;
    }
    if (keyCode == RIGHT) {
      rightPressed = false;
    }
  }
}
