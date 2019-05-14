  
  class ListenerVector2D{
  
  Vector2D toNotify;
  ArrayList<Observer> myObservers = new ArrayList<Observer>();
  
  public void subscribeObserver(Observer newObserver){
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
  
  void toNotify(Vector2D sendMe){
    toNotify = sendMe;
  }
  
  }
