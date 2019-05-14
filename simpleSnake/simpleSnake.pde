//Globale Objekte
Border GameBorder;
Snake snake;
SnakeMovement snakeMovement;
Command _c; 

void setup()
{
  build();
  size(1000, 700);
  frameRate(10);
  snakeMovement.subscribeObserver(GameBorder);
  snakeMovement.subscribeObserver(snake);
}

void draw()
{
  clear();
  background(70); 
  GameBorder.renderBorder();
  snake.renderMe();
  snakeMovement.notifyObservers();
  snakeMovement.move();
}

void keyTyped() {

  // Controller Klasse irgendwann machen 
  if (key == 'w') {
    println("w");
    _c = new CommandUP(snakeMovement);
  }
  if (key == 's') {
    println("s");
    _c = new CommandDOWN(snakeMovement);
  }
  if (key == 'a') {
    println("a");
    _c = new CommandLEFT(snakeMovement);
  }
  if (key == 'd') {
    println("d");
    _c = new CommandRIGHT(snakeMovement);
  }
  _c.execute();


  //Temporär Futter essen auf e
  if (key == 'e') {
    snake.eat();
  }
}

void build() {
  GameBorder = new Border();
  snake = new Snake();
  snakeMovement = new SnakeMovement();
}
