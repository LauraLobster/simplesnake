class Vector2D {

  float _x;
  float _y;



  Vector2D(float x, float y) {
    this._x = x;
    this._y = y;
  }

  Vector2D add(Vector2D another) {      // addition
    float wx = this._x+another._x;
    float wy = this._y+another._y;

    return new Vector2D(wx, wy);
  }

  Vector2D sub(Vector2D another) {    //subtraction
    float wx = this._x-another._x;
    float wy = this._y-another._y;
    return new Vector2D(wx, wy);
  }

  Vector2D sc(float sc) {    // scalar
    float wx = this._x*sc;
    float wy = this._y*sc;

    return new Vector2D(wx, wy);
  }

  float scpr(Vector2D another) {     //scalarprodukt
    float scpr = this._x*another._x+this._y*another._y;
    return scpr;
  }

  Vector2D multp(Vector2D another) {
    float wx = this._x*another._x;
    float wy = this._y*another._y;

    return new Vector2D(wx, wy);
  }

  float len() {
    float X =  this._x;
    float Y =  this._y;
    float B = sqrt(sq(X)+sq(Y));
    return B;
  }

  void set(float x, float y) {
    _x = x;
    _y = y;
  }
  
  float x() {
    return _x;
  }

  float y() {
    return _y;
  }
}
