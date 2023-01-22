class Ball {
  float diameter;
  float velocityX;
  float velocityY;
  color white = color(255);
  float x;
  float y;

  Ball(float startX, float startY, float nDiameter) {
    x = startX;
    y = startY;
    diameter = nDiameter;
    velocityX = random(10, 20);
    velocityY = random(10, 20);
  }

  void draw() {
    fill(white);

    x += velocityX;
    y += velocityY;
    image(ballImg, x, y, diameter, diameter);

    if (x<0 || x>width) {
      exit();
    }
      
    if (y<0 || y>height) {
      ball.velocityY *= -1;
    }    
    
    if (x<greenPaddle.x+40 && y>greenPaddle.y && y<greenPaddle.y+(padHeight*4)) { // Collision with green pad
      velocityX *= -1;
      velocityX *= 1.1;
    }
    
    if (x+40>bluePaddle.x && y>bluePaddle.y && y<bluePaddle.y+(padHeight*4)) { // Collision with blue pad
      velocityX *= -1;
      velocityX *= 1.1;
    }
    
  }
}
