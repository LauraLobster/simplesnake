enum _direction {up, left, right,down, none}

class SnakeMovement{
   
  _direction currentDirection = _direction.none;
  Vector2D currentPosition = new Vector2D(500, 500);
  
  void changePosition(Vector2D direction)
  {
    currentPosition = currentPosition.add(direction);
  }
  
 //Transitions
 void turnUP() {
    if (currentDirection != _direction.up)
      currentDirection = _direction.up;
    }
  
  void turnDOWN() {
    if (currentDirection != _direction.down)
      currentDirection = _direction.down;
  }

  void turnLEFT() {
    if (currentDirection != _direction.left)
      currentDirection = _direction.left;
  }

  void turnRIGHT() {
    if (currentDirection != _direction.right)
      currentDirection = _direction.right;
  }
  
  
  // States
   void move(){
     switch (currentDirection) {
       case up:
           Vector2D up = new Vector2D(0,-10);
           snake.changePosition(up);
           break;
       case down:
           Vector2D down = new Vector2D(0,10);
           snake.changePosition(down);
           break;
       case left:
           Vector2D left = new Vector2D(-10,0);
           snake.changePosition(left);
           break;
       case right: 
           Vector2D right = new Vector2D(10,0);
           snake.changePosition(right);
           break;
       case none:
           Vector2D stop = new Vector2D(0,0);
           snake.changePosition(stop);
           break;
       default: 
           // do nothing 
           break;
     }
   }
     
}
