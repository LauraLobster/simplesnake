class VisualSnake implements Observer{
  
 void onNotify(Vector2D snakePosition)
  {
    renderme(snakePosition);
  }
  
  void renderme(Vector2D here)
  {
    noStroke();
    fill(#008000);
    rect(here.x(),here.y(), 10, 10);
  }
  
}
