class SnakeMovement extends Subject{
  
  Directions directions = new Directions();
  Vector2D currentPosition = toNotify = new Vector2D(500, 500); 
  
  void turn(String newDirection){
    if(directions.isNotOppositeToCurrent(newDirection))
    directions.setCurrentDirection(newDirection);
  }

   void move(){
    currentPosition = currentPosition.add(directions.getDirection("current"));
    //dem Listener die neuePosition sagen
    toNotify(currentPosition);
   }
     
}
