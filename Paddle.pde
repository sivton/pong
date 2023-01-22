class Paddle {
  PVector position;
  float velocity;
  float pHeight;
  float pWidth;
  float x;
  float y;
  color whiteColour;

  Paddle(float startX, float startY) {
    x = startX;
    y = startY;
    position = new PVector(width/2, height/2);
    velocity = 10;
    pHeight = 500;
    pWidth = 50;
    whiteColour = color(255);
  }

  void draw(PImage img){
    fill(whiteColour);
    image(img, x, y, 0.04*width, height-200);
  }

}
