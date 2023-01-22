Paddle bluePaddle;
Paddle greenPaddle;
Ball ball;

PImage bg;
PImage greenPadImg;
float padWidth;
float padHeight;
PImage bluePadImg;
PImage greyPadImg;
PImage ballImg;

void setup() {
  size(1280, 720);
  // Images found online - I did not make them
  bg = loadImage("fancy-court.png");
  greenPadImg = loadImage("fancy-paddle-green.png");
  bluePadImg = loadImage("fancy-paddle-blue.png");
  ballImg = loadImage("ballimg.png");
  padWidth = greenPadImg.width;
  padHeight = greenPadImg.height;

  greenPaddle = new Paddle(0, 100);
  bluePaddle = new Paddle(width-50, 100);
  ball = new Ball(width/2, height/2, 40);
}

void draw() {
  image(bg, 0, 0, width, height);
  
  greenPaddle.draw(greenPadImg);
  bluePaddle.draw(bluePadImg);
  ball.draw();
}

void keyPressed() {
  if (greenPaddle.y>=0 && key == 'w') {
    greenPaddle.y -= 10;
  }
  if (greenPaddle.y+(padHeight*4)<height && key == 's') {
    greenPaddle.y += 10;
  }
  if (bluePaddle.y>=0 && keyCode == UP) {
    bluePaddle.y -= 10;
  }
  if (bluePaddle.y+(padHeight*4)<height && keyCode == DOWN) {
    bluePaddle.y += 10;
  }
}
