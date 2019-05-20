class Tracer
{
  ArrayList<Vector2D> _traced;
  int _capacity;

  Tracer(int capacity)
  {
    _traced= new ArrayList<Vector2D>();
    _capacity=capacity;
  }

  void trace(Vector2D loc)
  {
    if (_traced.size()>_capacity)
      _traced.remove(0);

    _traced.add(loc.clone());
  }

  void increaseCapacity()
  {
    _capacity++; // Huch? Das ist alles? Whow!
  }

  void render()
  {
    noStroke();
    fill(#008000);
    for (int i=0; i<_traced.size(); i++)
    {
      Vector2D current=_traced.get(i);
      rect(current.x(), current.y(), 10, 10); // immer noch eine Magic-Number 10,10 stehen gelassen
    }
  }
}
