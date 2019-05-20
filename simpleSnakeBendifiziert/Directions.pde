class Directions{
  
  float _stepSize = 10;
  HashMap<String,Vector2D> _directions = new HashMap<String,Vector2D>();
  
  Directions()
  {
   _directions.put("up",new Vector2D(0,-_stepSize));
   _directions.put("down",new Vector2D(0,_stepSize));
   _directions.put("left",new Vector2D(-_stepSize,0));
   _directions.put("right",new Vector2D(_stepSize,0)); 
   _directions.put("none",new Vector2D(0,0)); 
   _directions.put("current",new Vector2D(0,0));
  }
  
  Vector2D getDirection(String direction){
    return _directions.get(direction);
  }
  
  void setCurrentDirection(String direction){
    Vector2D newDirection = getDirection(direction);
    _directions.put("current", newDirection);
    }
  
}
