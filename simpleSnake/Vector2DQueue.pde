class Vector2DQueue{
  private int _front;
  private int _rear;
  private int _capacity;
  private Vector2D[] _queue;
  
  Vector2DQueue(int capacity){
    _front = _rear = 0; //index
    _capacity = capacity;
    _queue = new Vector2D[_capacity];
  }
  
  //add Element
   void addVector(Vector2D insertMe) 
    { 
        if (isFull()) { 
          // TO DO: schmeiße das letzte element raus ? Oder das in einer neuen Methode?
            System.out.printf("Queue is full"); 
            return; 
        } 
        // insert element at the rear 
        else { 
            _queue[_rear] = insertMe; 
            _rear++; 
        } 
       // return; 
    } 
    
    //remove last element
     void removeVector() 
    {  
        if (isEmpty()) { 
            println("Queue is empty"); 
            return; 
        } 
  
        // shift all the elements till rear 
        else { 
            for (int i = 0; i < _rear - 1; i++) { 
                _queue[i] = _queue[i + 1];    // Array statt ArrayList, weil wir nicht wissen, wie wir ein Element mit einem bestimmten Index in der ArrayList löschen
            } 
  
            // store null at rear indicating there's no element 
            if (_rear < _capacity) 
                _queue[_rear] = null; 
  
            // decrement rear 
            _rear--; 
        } 
        return; 
    } 
    
    void addCapacity(){
      ++_capacity;
      _queue = (Vector2D[]) expand(_queue,_capacity);
    }
    
    Vector2D[] toArray(){
      return _queue;
    }
    
    boolean isEmpty(){
      return(_front == _rear);
    }
    
    boolean isFull(){
      return (_capacity == _rear);
    }

}
