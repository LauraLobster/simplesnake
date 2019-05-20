class SnakeMovement extends Subject{
  
  Directions directions = new Directions();
  Vector2D currentPosition = toNotify = new Vector2D(500, 500); 
  
 void turnUP() {
  if((directions.getDirection("current") != directions.getDirection("down")))
  directions.setCurrentDirection("up");
 }
  
  void turnDOWN() {
  if(!(directions.getDirection("current") == directions.getDirection("up")))
  directions.setCurrentDirection("down");
  }

  void turnLEFT() {
  if(!(directions.getDirection("current") == directions.getDirection("right")))
  directions.setCurrentDirection("left");
  }

  void turnRIGHT() {
  if(!(directions.getDirection("current") == directions.getDirection("left")))
  directions.setCurrentDirection("right");
  }
  
  

   void move(){
    currentPosition = currentPosition.add(directions.getDirection("current"));
    //dem Listener die neuePosition sagen
    toNotify(currentPosition);
   }
     
}
