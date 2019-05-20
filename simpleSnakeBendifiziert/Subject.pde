
abstract class Subject // jb20180514 Irreführend benannt - es ist hier ein Subject gemeint. Am besten sollten Subject und Listener von der Benennung gut zueinander passen.
{

  Vector2D toNotify;
  ArrayList<Observer> myObservers = new ArrayList<Observer>();

  public void subscribe(Observer newObserver) 
  {
    myObservers.add(newObserver);
  }

  public void notifyObservers()
  {
    for (int i =0; i < myObservers.size(); i++)
    { 
      Observer currentObserver = myObservers.get(i);
      currentObserver.onNotify(toNotify);
    }
  }

  void toNotify(Vector2D sendMe) {
    toNotify = sendMe;
  }
}
