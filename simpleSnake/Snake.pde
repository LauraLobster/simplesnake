class Snake{
  Vector2D currentPosition = new Vector2D(20,20);
  ArrayList<Observer> myObservers = new ArrayList<Observer>();
  
  public void subscripeObserver(Observer newObserver){
    myObservers.add(newObserver);
  }
  
  public void notifyObservers()
  {
    for(int i =0; i < myObservers.size(); i++)
    { 
     Observer currentObserver = myObservers.get(i);
     currentObserver.onNotify(currentPosition);
    }
  }
  
}
