class Border implements Observer{
  Vector2D borders = new Vector2D(1000,1000);
  public void renderBorder()
  {
    noFill();
    strokeWeight(5);
    stroke(255,255,255);
    rect(0,0, borders.x(),borders.y());
  }
  
  void onNotify(Vector2D snakePosition)
  {
    if(_hitsMe(snakePosition))
      println("GameOver");
     else 
      println(snakePosition.x(),snakePosition.y());
  }
  
  private boolean _hitsMe(Vector2D other)
  {
       if(other.x() > borders.x() || other.x() < 0 || other.y() > borders.y() || other.y() < 0)
       return true;
       else return false;
  }
}
