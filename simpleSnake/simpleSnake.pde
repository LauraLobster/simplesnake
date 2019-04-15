Border GameBorder = new Border();
Snake snake = new Snake(); 

void setup()
{
  // This creates the canvas with the background being a dark grey
  size(400,400);
  background(70); 
  snake.subscripeObserver(GameBorder);
}

void draw()
{
  GameBorder.renderBorder();
  snake.notifyObservers();
}
