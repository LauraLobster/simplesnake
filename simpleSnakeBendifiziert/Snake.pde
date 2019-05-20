class Snake implements Observer {

  int _bodySize = 5;
  private Tracer _body = new Tracer(_bodySize); // jb20190514 eleganter, kürzer, besser, neuer, moderner! ArrayLists!

  void onNotify(Vector2D position) {
    moveBody(position);
  }

  void moveBody(Vector2D moveHere) {
    if (moveHere != null) {
      _body.trace(moveHere);
    }
  }

  //void moveBodyAltUndUmstaendlich(Vector2D moveHere) {
  //  if (moveHere != null) {
  //    if (_body.isFull()) {
  //      _body.removeVector();
  //    }
  //    _body.addVector(moveHere);
  //  }
  //}
  void eat() {
    _body.increaseCapacity(); // jb20190514 präziser benannt
  }

  void renderMe()
  {
    _body.render();
  }

  ////Das musin VisualgSnake verlagern
  //void renderMe() 
  //{
  //  if (!_body.isEmpty()) // jb20190514 Was wäre, wenn Sie das Ausrufezeichen hier wegfallen liessen? Verringerte das die Schachtelungstiefe?
  //  {
  //    Vector2D[] temp = _body.toArray();
  //    for (int i = 0; i<_body._capacity; i++) {
  //      if (temp[i] != null) // warum erwarten Sie hier, das es einen nullpointer geben könnte?
  //      {
  //        noStroke();
  //        fill(#008000);
  //        rect(temp[i].x(), temp[i].y(), 10, 10);
  //      }
  //    }
  //  }
  //}
}
