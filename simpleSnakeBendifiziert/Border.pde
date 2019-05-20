// Tipp: Denken Sie mal an Box2D, inside und outside und an Intervalle und drin und draussen...

class Border implements Observer
{
  float _borderStartX = 100;
  float _borderStartY = 50;
  float _hight = 500;
  float _width = 700;
 
  
  public void renderBorder()
  {
    noFill();
    strokeWeight(5);
    stroke(255,255,255);
    rect(_borderStartX,_borderStartY, _width,_hight);
  }
  
  void onNotify(Vector2D gSnakePosition)
  {
    if(_hitsMe(gSnakePosition))
      println("GameOver");
     else 
      println(gSnakePosition.x(),gSnakePosition.y());
  }
  
  private boolean _hitsMe(Vector2D other)
  {
       return (other.x() > _width || other.x() < _borderStartX || other.y() > _hight || other.y() < _borderStartY); // jb20190514 Ein häßlicher "klops". Geht das nicht schöner? Klarer? Schneller?

  }
}
