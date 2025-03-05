

class Flashlight {

  float size;

  Flashlight ( float _size) {

    size = _size;
  }

  void light(float xpos, float ypos) {
    darkness.beginDraw();
    darkness.background(0, 220);
    darkness.endDraw();

    noStroke();
    maskLayer.beginDraw();
    maskLayer.background(200);
    maskLayer.fill(0);
    maskLayer.ellipse(xpos, ypos, size, size);


    maskLayer.endDraw();

    darkness.mask(maskLayer);
    image(darkness, 0, 0);
  }

}
