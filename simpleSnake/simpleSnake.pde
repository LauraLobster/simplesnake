

Border GameBorder = new Border();
Snake snake = new Snake();
Command _c; 

void setup()
{
  // This creates the canvas with the background being a dark grey
  size(1000,1000);
  background(70); 
  frameRate(10);
  snake.subscripeObserver(GameBorder);
}

void draw()
{
  GameBorder.renderBorder();
  snake.notifyObservers();
  snake.move();
}





void keyTyped() {

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

 
