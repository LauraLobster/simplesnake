class Vector2DQueue{
  private int _front;
  private int _rear;
  private int _capacity;
  private Vector2D[] _queue;
  
  Vector2DQueue(int capacity){
    _front = _rear = 0;
    _capacity = capacity;
    _queue = new Vector2D[_capacity];
  }
  
  //add Element
   void addVector(Vector2D insertMe) 
    { 
        // check queue is full or not 
        if (_capacity == _rear) { 
            System.out.printf("Queue is full"); 
            //return; 
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
        // if queue is empty 
        if (_front == _rear) { 
            println("Queue is empty"); 
            //return; 
        } 
  
        // shift all the elements from index 2 till rear 
        // to the right by one 
        else { 
            for (int i = 0; i < _rear - 1; i++) { 
                _queue[i] = _queue[i + 1]; 
            } 
  
            // store 0 at rear indicating there's no element 
            if (_rear < _capacity) 
                _queue[_rear] = null; 
  
            // decrement rear 
            _rear--; 
        } 
      //  return; 
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
