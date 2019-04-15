  class Subject
  {
  ArrayList<Observer> myObservers = new ArrayList<Observer>();
  
  public void subscripe(Observer newObserver){
    myObservers.add(newObserver);
  }
  
  protected void _notify()
  {
    for(int i =0; i < myObservers.size(); i++)
    { 
     Observer currentObserver = myObservers.get(i);
   //  currentObserver.onNotify();
    }
  }
  }
