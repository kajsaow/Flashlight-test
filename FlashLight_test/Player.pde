class Player {
  float xpos, ypos;
  float speed;
  float size;
  float moveFactor;


  Player (float _xpos, float _ypos, float _speed, float _size) {
    xpos = _xpos;
    ypos = _ypos;
    speed = _speed;
    size = _size;

    moveFactor = 1;
  }


  void moveWASD() {


    if ((wPressed || sPressed) && (aPressed || dPressed)) { // If moving diagnoly
      moveFactor = 1 / sqrt(2);
    }



    if (wPressed) ypos -= speed * moveFactor;
    if (sPressed) ypos += speed * moveFactor;
    if (aPressed) xpos -= speed * moveFactor;
    if (dPressed) xpos += speed * moveFactor;
  }

  void moveARROW() {
    if ((upPressed || downPressed) && (leftPressed || rightPressed)) { // If moving diagnoly
      moveFactor = 1 / sqrt(2);
    }



    if (upPressed) ypos -= speed * moveFactor;
    if (downPressed) ypos += speed * moveFactor;
    if (leftPressed) xpos -= speed * moveFactor;
    if (rightPressed) xpos += speed * moveFactor;
  }


  void display() {
    pushMatrix();
    translate(xpos, ypos);

    fill(200, 50, 50);

    rect(0, 0, size, size);

    popMatrix();
  }
}
