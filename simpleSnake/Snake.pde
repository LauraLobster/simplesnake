class Snake extends SnakeMovement {
  
  //Snake ist ein Subject
  ArrayList<Observer> myObservers = new ArrayList<Observer>();
 
  
  public void subscripeObserver(Observer newObserver){
    myObservers.add(newObserver);
  }

  public void notifyObservers()
  {
    for (int i =0; i < myObservers.size(); i++)
    { 
      Observer currentObserver = myObservers.get(i);
      currentObserver.onNotify(currentPosition);
    }
  }
  

}
