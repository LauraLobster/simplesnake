Border GameBorder = new Border();
Snake snake = new Snake();
VisualSnake visualSnake = new VisualSnake();
Body body = new Body();
Command _c; 

void setup()
{
  size(1000,1000);
  frameRate(10);
  snake.subscripeObserver(GameBorder);
  snake.subscripeObserver(visualSnake);
  snake.subscripeObserver(body);
}

void draw()
{
  clear();
  background(70); 
  GameBorder.renderBorder();
  snake.notifyObservers();
  snake.move();
  body.renderMe();
}

void keyTyped() {

  // Controller Klasse irgendwann machen 
    if (key == 'w') {
      println("w");
      _c = new CommandUP(snake);
    }
    if (key == 's'){
       println("s");
      _c = new CommandDOWN(snake);
      }
    if (key == 'a'){
       println("a");
      _c = new CommandLEFT(snake);
    }
    if (key == 'd'){
       println("d");
      _c = new CommandRIGHT(snake);
    }
    _c.execute();
}

 
