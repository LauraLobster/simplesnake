class Snake {
  Vector2D currentPosition = new Vector2D(500, 500);
  ArrayList<Observer> myObservers = new ArrayList<Observer>();
  float dir = -2;
  boolean keystatus = true;

  public void subscripeObserver(Observer newObserver) {
    myObservers.add(newObserver);
  }

  public void notifyObservers()
  {
    for (int i =0; i < myObservers.size(); i++)
    { 
      Observer currentObserver = myObservers.get(i);
      currentObserver.onNotify(currentPosition);
    }
  }


  void turnUP() {
    if (dir != 1)
    {
      dir = -1;
      keystatus = false;
    }
  }


  void turnDOWN() {
    if (dir != -1)
    {
      dir = 1;
      keystatus = false;
    }
  }


  void turnLEFT() {

    if (dir != 2)
    {
      dir = -2;
      keystatus = false;
    }
  }


  void turnRIGHT() {
    if (dir != -2)
    {
      dir = 2;
      keystatus = false;
    }
  }
  
  void changePosition(Vector2D direction)
  {
    currentPosition = currentPosition.add(direction);
  }
  
   void move(){
    
      if (dir == -1)
  {
    Vector2D up = new Vector2D(0,-10);
    snake.changePosition(up);
  }
   if (dir == -2)
  {
    Vector2D left = new Vector2D(-10,0);
    snake.changePosition(left);
  }
   if (dir == 1)
  {
    Vector2D down = new Vector2D(0,10);
    snake.changePosition(down);
  }
   if (dir == 2)
  {
    Vector2D right = new Vector2D(10,0);
    snake.changePosition(right);
  }
   }
}
